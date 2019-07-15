.class public Lcom/unisound/ant/device/service/MessageHeader;
.super Ljava/lang/Object;
.source "MessageHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/service/MessageHeader$Builder;
    }
.end annotation


# instance fields
.field private messageType:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/unisound/ant/device/service/MessageHeader;->messageType:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/unisound/ant/device/service/MessageHeader;->version:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unisound/ant/device/service/MessageHeader;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/unisound/ant/device/service/MessageHeader;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageType"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/unisound/ant/device/service/MessageHeader;->messageType:Ljava/lang/String;

    .line 28
    return-void
.end method
