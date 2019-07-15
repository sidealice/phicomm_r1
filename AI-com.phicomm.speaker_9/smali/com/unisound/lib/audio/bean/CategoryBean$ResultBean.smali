.class public Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;
.super Ljava/lang/Object;
.source "CategoryBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/audio/bean/CategoryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBean"
.end annotation


# instance fields
.field private coverLarge:Ljava/lang/String;

.field private coverMiddle:Ljava/lang/String;

.field private coverSmall:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private orderNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoverLarge()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->coverLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverMiddle()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->coverMiddle:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverSmall()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->coverSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNum()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->orderNum:Ljava/lang/String;

    return-object v0
.end method

.method public setCoverLarge(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->coverLarge:Ljava/lang/String;

    return-void
.end method

.method public setCoverMiddle(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->coverMiddle:Ljava/lang/String;

    return-void
.end method

.method public setCoverSmall(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->coverSmall:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrderNum(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->orderNum:Ljava/lang/String;

    return-void
.end method
