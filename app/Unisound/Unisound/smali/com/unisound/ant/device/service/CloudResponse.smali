.class public Lcom/unisound/ant/device/service/CloudResponse;
.super Ljava/lang/Object;
.source "CloudResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/service/CloudResponse$Builder;
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
.field public static final MESSAGE_TYPE_INTENT_ACTION:Ljava/lang/String; = "intentAction"

.field public static final MESSAGE_TYPE_START_SYN:Ljava/lang/String; = "startSyn"

.field public static final MESSAGE_TYPE_SYNCH_INFO:Ljava/lang/String; = "synInfo"

.field public static final MESSAGE_TYPE_UPDATE_REPONSE:Ljava/lang/String; = "updateAck"

.field public static final MESSAGE_TYPE_UPLOAD_PD_REPONSE:Ljava/lang/String; = "uploadPDAck"


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
    .line 34
    .local p0, "this":Lcom/unisound/ant/device/service/CloudResponse;, "Lcom/unisound/ant/device/service/CloudResponse<TV;>;"
    .local p2, "messageBody":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/unisound/ant/device/service/MessageHeader;->getMessageType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/service/CloudResponse;->messageType:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/unisound/ant/device/service/MessageHeader;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/service/CloudResponse;->version:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/unisound/ant/device/service/CloudResponse;->messageBody:Ljava/lang/Object;

    .line 38
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
    .line 49
    .local p0, "this":Lcom/unisound/ant/device/service/CloudResponse;, "Lcom/unisound/ant/device/service/CloudResponse<TV;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/service/CloudResponse;->messageBody:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/unisound/ant/device/service/CloudResponse;, "Lcom/unisound/ant/device/service/CloudResponse<TV;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/service/CloudResponse;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/unisound/ant/device/service/CloudResponse;, "Lcom/unisound/ant/device/service/CloudResponse<TV;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/service/CloudResponse;->version:Ljava/lang/String;

    return-object v0
.end method
