.class public Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;
.super Ljava/lang/Object;
.source "WakeupWordBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/device/WakeupWordBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeupWordDetail"
.end annotation


# instance fields
.field private score:Ljava/lang/String;

.field private spell:Ljava/lang/String;

.field private tips:Ljava/lang/String;

.field private word:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScore()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getSpell()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;->spell:Ljava/lang/String;

    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;->word:Ljava/lang/String;

    return-object v0
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;->score:Ljava/lang/String;

    return-void
.end method

.method public setSpell(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;->spell:Ljava/lang/String;

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;->tips:Ljava/lang/String;

    return-void
.end method

.method public setWord(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;->word:Ljava/lang/String;

    return-void
.end method
