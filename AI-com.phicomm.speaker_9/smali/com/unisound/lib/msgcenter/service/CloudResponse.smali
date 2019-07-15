.class public Lcom/unisound/lib/msgcenter/service/CloudResponse;
.super Ljava/lang/Object;
.source "CloudResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/msgcenter/service/CloudResponse$Builder;
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
.method protected constructor <init>(Lcom/unisound/lib/msgcenter/service/MessageHeader;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/msgcenter/service/MessageHeader;",
            "TV;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/service/MessageHeader;->getMessageType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/service/CloudResponse;->messageType:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/service/MessageHeader;->getVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/lib/msgcenter/service/CloudResponse;->version:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/unisound/lib/msgcenter/service/CloudResponse;->messageBody:Ljava/lang/Object;

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

    .line 73
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/CloudResponse;->messageBody:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/CloudResponse;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/CloudResponse;->version:Ljava/lang/String;

    return-object v0
.end method
