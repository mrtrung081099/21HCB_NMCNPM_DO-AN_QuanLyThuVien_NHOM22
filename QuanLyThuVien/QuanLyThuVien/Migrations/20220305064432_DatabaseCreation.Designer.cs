﻿// <auto-generated />
using System;
using Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace QuanLyThuVien.Migrations
{
    [DbContext(typeof(RepositoryContext))]
    [Migration("20220305064432_DatabaseCreation")]
    partial class DatabaseCreation
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.14")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Entities.Models.DocGia", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier")
                        .HasColumnName("DocGiaId");

                    b.Property<string>("DiaChi")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("HoTen")
                        .IsRequired()
                        .HasMaxLength(60)
                        .HasColumnType("nvarchar(60)");

                    b.Property<string>("Loai")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("NgayLap")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("NgaySinh")
                        .HasColumnType("datetime2");

                    b.Property<Guid>("NhanVienId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<float>("TongNo")
                        .HasColumnType("real");

                    b.HasKey("Id");

                    b.HasIndex("NhanVienId");

                    b.ToTable("DocGias");
                });

            modelBuilder.Entity("Entities.Models.NhanVien", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier")
                        .HasColumnName("NhanVienId");

                    b.Property<string>("BangCap")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("BoPhan")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ChucVu")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("DiaChi")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("HoTen")
                        .IsRequired()
                        .HasMaxLength(60)
                        .HasColumnType("nvarchar(60)");

                    b.Property<DateTime>("NgaySinh")
                        .HasColumnType("datetime2");

                    b.Property<string>("SDT")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("NhanViens");
                });

            modelBuilder.Entity("Entities.Models.DocGia", b =>
                {
                    b.HasOne("Entities.Models.NhanVien", "NhanVien")
                        .WithMany("DocGias")
                        .HasForeignKey("NhanVienId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("NhanVien");
                });

            modelBuilder.Entity("Entities.Models.NhanVien", b =>
                {
                    b.Navigation("DocGias");
                });
#pragma warning restore 612, 618
        }
    }
}
