import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { NzMessageService } from 'ng-zorro-antd/message';
import { DocgiaService } from '../services/docgia/docgia.service';
import { NhanvienService } from '../services/nhanvien/nhanvien.service';
import { PhieumatService } from '../services/phieumat/phieumat.service';
import { SachService } from '../services/sach/sach.service';

@Component({
  selector: 'app-phieumat',
  templateUrl: './phieumat.component.html',
  styleUrls: ['./phieumat.component.scss']
})
export class PhieumatComponent implements OnInit {
  listPhieuMat:any[]=[];
  listDocGia:any[]=[];
  listNhanVien:any[]=[];
  listSach:any[]=[];
  total:number=0;
  giaTemp:number=0;
  pageNum:number=1;
  pageSize:number=10;
  isVisible:boolean=false;
  isOkLoading:boolean=false;
  isShowDetai:boolean=false;
  phieuMatInFo:any;
  createForm!: FormGroup;
  constructor(
    private phieumatService:PhieumatService,
    private fb: FormBuilder,
    private docgiaService: DocgiaService,
    private sachService: SachService,
    private nhanvienService:NhanvienService,
    private message: NzMessageService
  ) { }

  ngOnInit() {
    this.getAllPhieuMat();
    this.getAllDocGia();
    this.getListNhanVien();
  }
  getAllPhieuMat(){
    this.phieumatService.GetAllPhieuMat(this.pageNum,this.pageSize).subscribe((res: any) => {
      this.listPhieuMat = res.listPhieuMatSachs;
      this.total = res.total;
    }, (err) => {
      console.log(err);
    });
  }
  getAllDocGia(){
    this.docgiaService.GetAllDocGiaNoPaging().subscribe((res: any) => {
      this.listDocGia = res.listDgs;
    }, (err) => {
      console.log(err);
    });
  }
  getListNhanVien(){
    this.nhanvienService.GetAllNhanVien().subscribe((res: any) => {
      this.listNhanVien = res.listNvs;
    }, (err) => {
      console.log(err);
    });
  }
  getSachMuonByDocGiaId(docgiaId:any){
    var date = new Date;
    this.sachService.GetSachMuonByDocGiaId(docgiaId,date).subscribe((res: any) => {
      if(res.length>0){
        this.listSach = res;
      }else{
        this.message.create('warning', "?????c gi??? kh??ng c?? s??ch m?????n");
        this.createForm.controls['docGiaId'].setValue('');
      }
    }, (err) => {
      console.log(err);
    });
  }
  showModalCreate(){
    this.isVisible=true;
    this.createForm = this.fb.group({
      sachId: ["", Validators.required],
      docGiaId: ["", Validators.required],
      nhanVienId: ["", Validators.required],
      ngayGhiNhan: ["", Validators.required],
      tienPhat: ["", Validators.required],
    });
  }
  getDetailPhieuMat(data:any){
    this.phieuMatInFo = data;
    this.isShowDetai = true;
  }
  getByPaging(pageNum:number){
    this.pageNum = pageNum;
    this.getAllPhieuMat();
  }
  handleCancelModalCreate(){
    this.isVisible = false;
  }
  handleOk(){
    if(this.createForm.valid){
      var temp = this.createForm.controls['tienPhat'].value;
      temp = parseInt(temp);
      if(temp >= this.giaTemp){
        this.phieumatService.CreatePhieuMat(this.createForm.value).subscribe((res: any) => {
          this.message.create('success', "Ghi nh???n m???t s??ch th??nh c??ng");
          this.isVisible =false;
          this.getAllPhieuMat();
        }, (err) => {
          console.log(err);
          this.message.create('error', "???? c?? l???i x???y ra");
        });
      }
      else{
        this.message.create('warning', "Ti???n ph???t kh??ng nh??? h??n tr??? gi?? quy???n s??ch");
      }
    }
    else{
      this.message.create('warning', "Vui l??ng ??i???n ????? th??ng tin");
      Object.values(this.createForm.controls).forEach(control => {
        if (control.invalid) {
          control.markAsDirty();
          control.updateValueAndValidity({ onlySelf: true });
        }
      });
    }

  }
  handleCancel2(){
    this.isShowDetai = false;
  }
  onSelectDocGia(docgiaId:any){
    if(docgiaId != ''){
      this.getSachMuonByDocGiaId(docgiaId);
    }
  }
  onSelectSach(sachId:any){
    this.sachService.GetSachById(sachId).subscribe((res: any) => {
      this.giaTemp = res.gia;
      this.createForm.controls['tienPhat'].setValue(res.gia);
    }, (err) => {
      console.log(err);
    });
  }
  onChangeGia(gia:number){
    if(gia < this.giaTemp){
      this.message.create('warning', "Ti???n ph???t kh??ng nh??? h??n tr??? gi?? quy???n s??ch");
    }
  }
  onChangeNhanVien(nhanVienId:any){
    if(nhanVienId != ''){
      const index = this.listNhanVien.findIndex(
      (item: any) => item.id === nhanVienId
      );
      if(this.listNhanVien[index].boPhan != 'Th??? Th??'){
        this.message.create('error', "Ng?????i ghi nh???n m???t s??ch ph???i l?? nh??n vi??n thu???c b??? ph???n th??? th??");
        this.createForm.controls['nhanVienId'].setValue('');
      }
    }
  }
}
