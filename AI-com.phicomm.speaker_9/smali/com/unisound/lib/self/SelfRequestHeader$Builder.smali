.class public Lcom/unisound/lib/self/SelfRequestHeader$Builder;
.super Ljava/lang/Object;
.source "SelfRequestHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/self/SelfRequestHeader;
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

.field private protocolType:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unisound/lib/self/SelfRequestHeader;
    .locals 7

    .line 187
    invoke-virtual {p0}, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->check()V

    .line 188
    new-instance v6, Lcom/unisound/lib/self/SelfRequestHeader;

    iget-object v1, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->udid:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->businessType:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->command:Ljava/lang/String;

    iget-object v4, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->protocolType:Ljava/lang/String;

    iget-object v5, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->data:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/unisound/lib/self/SelfRequestHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v6
.end method

.method check()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->businessType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "businessType may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->command:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public getProtocolType()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->protocolType:Ljava/lang/String;

    return-object v0
.end method

.method public setBusinessType(Ljava/lang/String;)Lcom/unisound/lib/self/SelfRequestHeader$Builder;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->businessType:Ljava/lang/String;

    return-object p0
.end method

.method public setCommand(Ljava/lang/String;)Lcom/unisound/lib/self/SelfRequestHeader$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->command:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Ljava/lang/Object;)Lcom/unisound/lib/self/SelfRequestHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/unisound/lib/self/SelfRequestHeader$Builder;"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public setProtocolType(Ljava/lang/String;)Lcom/unisound/lib/self/SelfRequestHeader$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->protocolType:Ljava/lang/String;

    return-object p0
.end method

.method public setUdid(Ljava/lang/String;)Lcom/unisound/lib/self/SelfRequestHeader$Builder;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/unisound/lib/self/SelfRequestHeader$Builder;->udid:Ljava/lang/String;

    return-object p0
.end method
