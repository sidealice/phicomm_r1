.class public Lcom/unisound/lib/msgcenter/service/MessageHeader;
.super Ljava/lang/Object;
.source "MessageHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/msgcenter/service/MessageHeader$Builder;
    }
.end annotation


# instance fields
.field private messageType:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/service/MessageHeader;->messageType:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/unisound/lib/msgcenter/service/MessageHeader;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessageType()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/MessageHeader;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/MessageHeader;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/service/MessageHeader;->messageType:Ljava/lang/String;

    return-void
.end method
