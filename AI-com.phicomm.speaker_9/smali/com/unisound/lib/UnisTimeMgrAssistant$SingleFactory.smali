.class final Lcom/unisound/lib/UnisTimeMgrAssistant$SingleFactory;
.super Ljava/lang/Object;
.source "UnisTimeMgrAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/UnisTimeMgrAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/UnisTimeMgrAssistant;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/unisound/lib/UnisTimeMgrAssistant;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/UnisTimeMgrAssistant;-><init>(Lcom/unisound/lib/UnisTimeMgrAssistant$1;)V

    sput-object v0, Lcom/unisound/lib/UnisTimeMgrAssistant$SingleFactory;->instant:Lcom/unisound/lib/UnisTimeMgrAssistant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
