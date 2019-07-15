.class public Lcom/unisound/lib/usercenter/bean/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field accessToken:Ljava/lang/String;

.field flushToken:Ljava/lang/String;

.field passportId:I

.field userCel:Ljava/lang/String;

.field userName:Ljava/lang/String;

.field validTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/Result;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFlushToken()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/Result;->flushToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportId()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/unisound/lib/usercenter/bean/Result;->passportId:I

    return v0
.end method

.method public getUserCel()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/Result;->userCel:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/Result;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getValidTime()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/unisound/lib/usercenter/bean/Result;->validTime:J

    return-wide v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/Result;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setFlushToken(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/Result;->flushToken:Ljava/lang/String;

    return-void
.end method

.method public setPassportId(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/unisound/lib/usercenter/bean/Result;->passportId:I

    return-void
.end method

.method public setUserCel(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/Result;->userCel:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/Result;->userName:Ljava/lang/String;

    return-void
.end method

.method public setValidTime(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/unisound/lib/usercenter/bean/Result;->validTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result{userName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/usercenter/bean/Result;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", passportId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/unisound/lib/usercenter/bean/Result;->passportId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userCel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/usercenter/bean/Result;->userCel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", validTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/unisound/lib/usercenter/bean/Result;->validTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", flushToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/usercenter/bean/Result;->flushToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", accessToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/usercenter/bean/Result;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
