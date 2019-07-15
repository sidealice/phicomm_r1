.class public Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;
.super Ljava/lang/Object;
.source "AudioSecondList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnouncerBean"
.end annotation


# instance fields
.field private avatar_url:Ljava/lang/String;

.field private id:I

.field private is_verified:Z

.field private kind:Ljava/lang/String;

.field private nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_url()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;->id:I

    return v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_verified()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;->is_verified:Z

    return v0
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;->id:I

    return-void
.end method

.method public setIs_verified(Z)V
    .locals 0

    .line 428
    iput-boolean p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;->is_verified:Z

    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;->kind:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;->nickname:Ljava/lang/String;

    return-void
.end method
