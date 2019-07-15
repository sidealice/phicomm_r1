.class final Lcom/unisound/lib/UnisDeviceAssistant$SingleFactory;
.super Ljava/lang/Object;
.source "UnisDeviceAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/UnisDeviceAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/UnisDeviceAssistant;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Lcom/unisound/lib/UnisDeviceAssistant;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/UnisDeviceAssistant;-><init>(Lcom/unisound/lib/UnisDeviceAssistant$1;)V

    sput-object v0, Lcom/unisound/lib/UnisDeviceAssistant$SingleFactory;->instant:Lcom/unisound/lib/UnisDeviceAssistant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
