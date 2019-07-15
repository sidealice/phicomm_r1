.class public Lcom/unisound/ant/device/service/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/service/BaseRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MESSAGE_TYPE_GD_REQUEST:Ljava/lang/String; = "uploadGDRequest"

.field public static final MESSAGE_TYPE_INTENT_ACK:Ljava/lang/String; = "intentAck"

.field public static final MESSAGE_TYPE_PD_REQUEST:Ljava/lang/String; = "uploadPDRequest"

.field public static final MESSAGE_TYPE_SYNC_INFO:Ljava/lang/String; = "synInfo"


# instance fields
.field private messageBody:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private messageType:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/unisound/ant/device/service/MessageHeader;Ljava/lang/Object;)V
    .locals 1
    .param p1, "header"    # Lcom/unisound/ant/device/service/MessageHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/ant/device/service/MessageHeader;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/unisound/ant/device/service/BaseRequest;, "Lcom/unisound/ant/device/service/BaseRequest<TV;>;"
    .local p2, "messageBody":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/unisound/ant/device/service/MessageHeader;->getMessageType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/service/BaseRequest;->messageType:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/unisound/ant/device/service/MessageHeader;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/service/BaseRequest;->version:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/unisound/ant/device/service/BaseRequest;->messageBody:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public getMessageBody()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/unisound/ant/device/service/BaseRequest;, "Lcom/unisound/ant/device/service/BaseRequest<TV;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/service/BaseRequest;->messageBody:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/unisound/ant/device/service/BaseRequest;, "Lcom/unisound/ant/device/service/BaseRequest<TV;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/service/BaseRequest;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/unisound/ant/device/service/BaseRequest;, "Lcom/unisound/ant/device/service/BaseRequest<TV;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/service/BaseRequest;->version:Ljava/lang/String;

    return-object v0
.end method
