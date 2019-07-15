.class public Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;
.super Ljava/lang/Object;
.source "BindDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/msgcenter/bean/BindDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicesBean"
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private createTime:J

.field private deviceType:Ljava/lang/String;

.field private id:I

.field private isActive:Z

.field private online:Z

.field private udid:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->createTime:J

    return-wide v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->id:I

    return v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isIsActive()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->isActive:Z

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->online:Z

    return v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->createTime:J

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->id:I

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->isActive:Z

    return-void
.end method

.method public setOnline(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->online:Z

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->udid:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DevicesBean{isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", udid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->udid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", online="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->online:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", appKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
