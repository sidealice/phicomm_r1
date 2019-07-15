.class public Lcom/unisound/lib/msgcenter/service/MessageHeader$Builder;
.super Ljava/lang/Object;
.source "MessageHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/msgcenter/service/MessageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private messageType:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unisound/lib/msgcenter/service/MessageHeader;
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/service/MessageHeader$Builder;->check()V

    .line 104
    new-instance v0, Lcom/unisound/lib/msgcenter/service/MessageHeader;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/service/MessageHeader$Builder;->messageType:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/service/MessageHeader$Builder;->version:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/unisound/lib/msgcenter/service/MessageHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method check()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/MessageHeader$Builder;->messageType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messageType may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/service/MessageHeader$Builder;->version:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "version may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setMessageType(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/service/MessageHeader$Builder;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/service/MessageHeader$Builder;->messageType:Ljava/lang/String;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/service/MessageHeader$Builder;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/service/MessageHeader$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
