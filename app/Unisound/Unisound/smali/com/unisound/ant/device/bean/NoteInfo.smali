.class public Lcom/unisound/ant/device/bean/NoteInfo;
.super Ljava/lang/Object;
.source "NoteInfo.java"


# instance fields
.field private createTime:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/bean/NoteInfo;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unisound/ant/device/bean/NoteInfo;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unisound/ant/device/bean/NoteInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/unisound/ant/device/bean/NoteInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createTime"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/unisound/ant/device/bean/NoteInfo;->createTime:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/unisound/ant/device/bean/NoteInfo;->id:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unisound/ant/device/bean/NoteInfo;->msg:Ljava/lang/String;

    .line 37
    return-void
.end method
