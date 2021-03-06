import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
@Injectable({
  providedIn: 'root'
})
export class SachService {

  constructor(private http: HttpClient) { }
  GetAllSach(pageNum:any,pageSize:any) {
    return this.http.get(environment.apiUrl + 'sachs/GetAll?PageNumber='+pageNum+'&PageSize='+pageSize, {
      headers: new HttpHeaders({ "Content-Type": "application/json" }),
    });
  }
  GetAllSachNoPaging() {
    return this.http.get(environment.apiUrl + 'sachs/GetAllForThanhLy', {
      headers: new HttpHeaders({ "Content-Type": "application/json" }),
    });
  }
  GetAllByState(pageNum:any,pageSize:any,search:any) {
    return this.http.get(environment.apiUrl + 'sachs/GetAllByState?PageNumber='+pageNum+'&PageSize='+pageSize+'&Search='+search, {
      headers: new HttpHeaders({ "Content-Type": "application/json" }),
    });
  }
  GetAllByStateNoPaging(search:any) {
    return this.http.get(environment.apiUrl + 'sachs/GetAllByState?Search='+search, {
      headers: new HttpHeaders({ "Content-Type": "application/json" }),
    });
  }
  GetAllByName(pageNum:any,pageSize:any,search:any) {
    return this.http.get(environment.apiUrl + 'sachs/GetAllByName?PageNumber='+pageNum+'&PageSize='+pageSize+'&Search='+search, {
      headers: new HttpHeaders({ "Content-Type": "application/json" }),
    });
  }
  GetSachMuonByDocGiaId(docgiaId:any,ngayTra:any) {;
    return this.http.get(environment.apiUrl + 'sachs/GetSachMuonByDocgiaId?id='+docgiaId+'&ngayTra='+ngayTra.toJSON(), {
      headers: new HttpHeaders({ "Content-Type": "application/json" }),
    });
  }
  GetSachById(sachId:any) {
    return this.http.get(environment.apiUrl + 'sachs/GetById/'+sachId, {
      headers: new HttpHeaders({ "Content-Type": "application/json" }),
    });
  }
  GetThongKeSachMuonTheoThang(thang:any) {
    return this.http.get(environment.apiUrl + 'sachs/ThongKeSachMuon?thang='+thang.toJSON(), {
      headers: new HttpHeaders({ "Content-Type": "application/json" }),
    });
  }
  GetThongKeSachTraTreTheoNgay(ngay:any) {
    return this.http.get(environment.apiUrl + 'sachs/ThongKeSachTraTre?ngay='+ngay.toJSON(), {
      headers: new HttpHeaders({ "Content-Type": "application/json" }),
    });
  }
  CreateSach(sachData:any){
    return this.http.post(environment.apiUrl + "sachs/CreateSach", JSON.stringify(sachData), {
      headers: new HttpHeaders({
        "Content-Type": "application/json",
        'Accept': 'application/json',
        // 'Authorization': `Bearer ${localStorage.getItem('token')}`
      }),
    });
  }
  DeleteSach(id : any){
    return this.http.delete(environment.apiUrl + "sachs/DeleteSach/" +id, {
      headers: new HttpHeaders({
        "Content-Type": "application/json",
        'Accept': 'application/json',
      }),
    })
  }
  UpdateSach(id : any, data:any){
    return this.http.put(environment.apiUrl + "sachs/UpdateSach/"+id, JSON.stringify(data), {
      headers: new HttpHeaders({
        "Content-Type": "application/json",
        'Accept': 'application/json',
      }),
    })
  }
}
