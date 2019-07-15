.class public Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;
.super Ljava/lang/Object;
.source "RomUpdateProgressBean.java"


# instance fields
.field private cur_fw_ver:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private download_progress:I

.field private fw_bin_url:Ljava/lang/String;

.field private pre_fw_ver:Ljava/lang/String;

.field private reboot_delay:I

.field private ret_code:I

.field private ret_msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCur_fw_ver()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->cur_fw_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_progress()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->download_progress:I

    return v0
.end method

.method public getFw_bin_url()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->fw_bin_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPre_fw_ver()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->pre_fw_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getReboot_delay()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->reboot_delay:I

    return v0
.end method

.method public getRet_code()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->ret_code:I

    return v0
.end method

.method public getRet_msg()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->ret_msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCur_fw_ver(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->cur_fw_ver:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setDownload_progress(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->download_progress:I

    return-void
.end method

.method public setFw_bin_url(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->fw_bin_url:Ljava/lang/String;

    return-void
.end method

.method public setPre_fw_ver(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->pre_fw_ver:Ljava/lang/String;

    return-void
.end method

.method public setReboot_delay(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->reboot_delay:I

    return-void
.end method

.method public setRet_code(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->ret_code:I

    return-void
.end method

.method public setRet_msg(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->ret_msg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RomUpdateProgressBean{ret_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->ret_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ret_msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->ret_msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->device_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fw_bin_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->fw_bin_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pre_fw_ver=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->pre_fw_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cur_fw_ver=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->cur_fw_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", download_progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->download_progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reboot_delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->reboot_delay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
