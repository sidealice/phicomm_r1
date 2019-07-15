.class public Lcom/unisound/lib/device/WakeupWordBean;
.super Ljava/lang/Object;
.source "WakeupWordBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;
    }
.end annotation


# instance fields
.field private mWordDetail:Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ret"
    .end annotation
.end field

.field private resultCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/unisound/lib/device/WakeupWordBean;->resultCode:I

    return v0
.end method

.method public getWordDetail()Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/unisound/lib/device/WakeupWordBean;->mWordDetail:Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;

    return-object v0
.end method

.method public setResultCode(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/unisound/lib/device/WakeupWordBean;->resultCode:I

    return-void
.end method

.method public setWordDetail(Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/unisound/lib/device/WakeupWordBean;->mWordDetail:Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;

    return-void
.end method
