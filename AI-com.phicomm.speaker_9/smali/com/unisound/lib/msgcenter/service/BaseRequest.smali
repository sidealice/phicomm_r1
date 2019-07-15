.class public Lcom/unisound/lib/msgcenter/service/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/msgcenter/service/BaseRequest$Builder;
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

.field public static final MESSAGE_TYPE_SYNC_INFO:Ljava/lang/String; = "syncInfo"


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
.method protected constructor <init>(Lcom/unisound/lib/msgcenter/service/MessageHeader;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/msgcenter/service/MessageHeader;",
            "TV;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/service/MessageHeader;->getMessageType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/service/BaseRequest;->messageType:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/service/MessageHeader;->getVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/lib/msgcenter/service/BaseRequest;->version:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/unisound/lib/msgcenter/service/BaseRequest;->messageBody:Ljava/lang/Object;

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

    .line 74
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/BaseRequest;->messageBody:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/BaseRequest;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/BaseRequest;->version:Ljava/lang/String;

    return-object v0
.end method
