.class public Lcom/unisound/ant/device/mqtt/bean/SupMessage;
.super Ljava/lang/Object;
.source "SupMessage.java"


# instance fields
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
.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/SupMessage;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/SupMessage;->msg:Ljava/lang/String;

    .line 16
    return-void
.end method
