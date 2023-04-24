/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Describe {
    private int DesId;
    private String MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, HeDieuHanh, Chipset, Ram, Rom, Pin; 
    private String[] ThongTinSanPham, DacDiemNoiBat;
    private New NewId;

    public Describe() {
    }

    public Describe(int DesId, String MatKinhCamUng, String DoPhanGiai, String ManHinhRong, String CameraSau, String QuayPhim, String HeDieuHanh, String Chipset, String Ram, String Rom, String Pin, String[] ThongTinSanPham, String[] DacDiemNoiBat, New NewId) {
        this.DesId = DesId;
        this.MatKinhCamUng = MatKinhCamUng;
        this.DoPhanGiai = DoPhanGiai;
        this.ManHinhRong = ManHinhRong;
        this.CameraSau = CameraSau;
        this.QuayPhim = QuayPhim;
        this.HeDieuHanh = HeDieuHanh;
        this.Chipset = Chipset;
        this.Ram = Ram;
        this.Rom = Rom;
        this.Pin = Pin;
        this.ThongTinSanPham = ThongTinSanPham;
        this.DacDiemNoiBat = DacDiemNoiBat;
        this.NewId = NewId;
    }

    public int getDesId() {
        return DesId;
    }

    public void setDesId(int DesId) {
        this.DesId = DesId;
    }

    public String getMatKinhCamUng() {
        return MatKinhCamUng;
    }

    public void setMatKinhCamUng(String MatKinhCamUng) {
        this.MatKinhCamUng = MatKinhCamUng;
    }

    public String getDoPhanGiai() {
        return DoPhanGiai;
    }

    public void setDoPhanGiai(String DoPhanGiai) {
        this.DoPhanGiai = DoPhanGiai;
    }

    public String getManHinhRong() {
        return ManHinhRong;
    }

    public void setManHinhRong(String ManHinhRong) {
        this.ManHinhRong = ManHinhRong;
    }

    public String getCameraSau() {
        return CameraSau;
    }

    public void setCameraSau(String CameraSau) {
        this.CameraSau = CameraSau;
    }

    public String getQuayPhim() {
        return QuayPhim;
    }

    public void setQuayPhim(String QuayPhim) {
        this.QuayPhim = QuayPhim;
    }

    public String getHeDieuHanh() {
        return HeDieuHanh;
    }

    public void setHeDieuHanh(String HeDieuHanh) {
        this.HeDieuHanh = HeDieuHanh;
    }

    public String getChipset() {
        return Chipset;
    }

    public void setChipset(String Chipset) {
        this.Chipset = Chipset;
    }

    public String getRam() {
        return Ram;
    }

    public void setRam(String Ram) {
        this.Ram = Ram;
    }

    public String getRom() {
        return Rom;
    }

    public void setRom(String Rom) {
        this.Rom = Rom;
    }

    public String getPin() {
        return Pin;
    }

    public void setPin(String Pin) {
        this.Pin = Pin;
    }

    public String[] getThongTinSanPham() {
        return ThongTinSanPham;
    }

    public void setThongTinSanPham(String[] ThongTinSanPham) {
        this.ThongTinSanPham = ThongTinSanPham;
    }

    public String[] getDacDiemNoiBat() {
        return DacDiemNoiBat;
    }

    public void setDacDiemNoiBat(String[] DacDiemNoiBat) {
        this.DacDiemNoiBat = DacDiemNoiBat;
    }

    public New getNewId() {
        return NewId;
    }

    public void setNewId(New NewId) {
        this.NewId = NewId;
    }

    
    
}
