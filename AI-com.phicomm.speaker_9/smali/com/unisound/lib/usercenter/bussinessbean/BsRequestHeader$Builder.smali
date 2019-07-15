.class public Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;
.super Ljava/lang/Object;
.source "BsRequestHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private businessType:Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;
    .locals 5

    .line 127
    invoke-virtual {p0}, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->check()V

    .line 128
    new-instance v0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    iget-object v1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->businessType:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->command:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->data:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$1;)V

    return-object v0
.end method

.method check()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->businessType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "businessType may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->command:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setBusinessType(Ljava/lang/String;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->businessType:Ljava/lang/String;

    return-object p0
.end method

.method public setCommand(Ljava/lang/String;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->command:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader$Builder;->data:Ljava/lang/Object;

    return-object p0
.end method
