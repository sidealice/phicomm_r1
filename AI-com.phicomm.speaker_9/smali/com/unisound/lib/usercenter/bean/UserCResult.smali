.class public Lcom/unisound/lib/usercenter/bean/UserCResult;
.super Ljava/lang/Object;
.source "UserCResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field costTime:Ljava/lang/String;

.field message:Ljava/lang/String;

.field result:Lcom/unisound/lib/usercenter/bean/Result;

.field returnCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCostTime()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/UserCResult;->costTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/UserCResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/unisound/lib/usercenter/bean/Result;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/UserCResult;->result:Lcom/unisound/lib/usercenter/bean/Result;

    return-object v0
.end method

.method public getReturnCode()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/UserCResult;->returnCode:Ljava/lang/String;

    return-object v0
.end method

.method public setCostTime(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/UserCResult;->costTime:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/UserCResult;->message:Ljava/lang/String;

    return-void
.end method

.method public setResult(Lcom/unisound/lib/usercenter/bean/Result;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/UserCResult;->result:Lcom/unisound/lib/usercenter/bean/Result;

    return-void
.end method

.method public setReturnCode(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/UserCResult;->returnCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserCResult{returnCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/usercenter/bean/UserCResult;->returnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/usercenter/bean/UserCResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", costTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/usercenter/bean/UserCResult;->costTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/usercenter/bean/UserCResult;->result:Lcom/unisound/lib/usercenter/bean/Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
