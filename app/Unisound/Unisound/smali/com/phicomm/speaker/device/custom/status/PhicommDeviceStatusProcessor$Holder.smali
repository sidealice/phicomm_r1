.class Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$Holder;
.super Ljava/lang/Object;
.source "PhicommDeviceStatusProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;-><init>(Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$1;)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$Holder;->sProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$Holder;->sProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    return-object v0
.end method
