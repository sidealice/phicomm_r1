.class Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$Holder;
.super Ljava/lang/Object;
.source "MessageSenderDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sDelegate:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;
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
    .line 166
    new-instance v0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;-><init>(Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$1;)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$Holder;->sDelegate:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$Holder;->sDelegate:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    return-object v0
.end method
