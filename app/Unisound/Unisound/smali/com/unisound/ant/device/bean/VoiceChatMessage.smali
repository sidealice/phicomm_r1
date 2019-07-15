.class public Lcom/unisound/ant/device/bean/VoiceChatMessage;
.super Ljava/lang/Object;
.source "VoiceChatMessage.java"


# instance fields
.field private createTime:Ljava/lang/String;

.field private isUserEdited:Z

.field private logId:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/unisound/ant/device/bean/VoiceChatMessage;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/unisound/ant/device/bean/VoiceChatMessage;->logId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unisound/ant/device/bean/VoiceChatMessage;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isUserEdited()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/VoiceChatMessage;->isUserEdited:Z

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createTime"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/unisound/ant/device/bean/VoiceChatMessage;->createTime:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setLogId(Ljava/lang/String;)V
    .locals 0
    .param p1, "logId"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/unisound/ant/device/bean/VoiceChatMessage;->logId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/unisound/ant/device/bean/VoiceChatMessage;->msg:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUserEdited(Z)V
    .locals 0
    .param p1, "userEdited"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/VoiceChatMessage;->isUserEdited:Z

    .line 44
    return-void
.end method
