.class public Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;
.super Ljava/lang/Object;
.source "VoiceChatMessage.java"


# instance fields
.field private createTime:Ljava/lang/String;

.field private feedBackType:Ljava/lang/String;

.field private isUserEdited:Z

.field private logId:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private pageCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedBackType()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->feedBackType:Ljava/lang/String;

    return-object v0
.end method

.method public getLogId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->logId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCount()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->pageCount:Ljava/lang/String;

    return-object v0
.end method

.method public isUserEdited()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->isUserEdited:Z

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setFeedBackType(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->feedBackType:Ljava/lang/String;

    return-void
.end method

.method public setLogId(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->logId:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->msg:Ljava/lang/String;

    return-void
.end method

.method public setPageCount(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->pageCount:Ljava/lang/String;

    return-void
.end method

.method public setUserEdited(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->isUserEdited:Z

    return-void
.end method
