.class public Lcom/phicomm/speaker/bean/RomUpdateBean;
.super Ljava/lang/Object;
.source "RomUpdateBean.java"


# instance fields
.field private file_md5:Ljava/lang/String;

.field private file_size:I

.field private file_url:Ljava/lang/String;

.field private fw_ver:Ljava/lang/String;

.field private ret:I

.field private update_type:Ljava/lang/String;

.field private ver_infos:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile_md5()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->file_md5:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_size()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->file_size:I

    return v0
.end method

.method public getFile_url()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->file_url:Ljava/lang/String;

    return-object v0
.end method

.method public getFw_ver()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->fw_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getRet()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->ret:I

    return v0
.end method

.method public getUpdate_type()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->update_type:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_infos()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->ver_infos:Ljava/lang/String;

    return-object v0
.end method

.method public setFile_md5(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->file_md5:Ljava/lang/String;

    return-void
.end method

.method public setFile_size(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->file_size:I

    return-void
.end method

.method public setFile_url(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->file_url:Ljava/lang/String;

    return-void
.end method

.method public setFw_ver(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->fw_ver:Ljava/lang/String;

    return-void
.end method

.method public setRet(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->ret:I

    return-void
.end method

.method public setUpdate_type(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->update_type:Ljava/lang/String;

    return-void
.end method

.method public setVer_infos(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->ver_infos:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RomUpdateBean{file_md5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->file_md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", file_size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->file_size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", file_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->file_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fw_ver=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->fw_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->ret:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", update_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->update_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ver_infos=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/RomUpdateBean;->ver_infos:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
