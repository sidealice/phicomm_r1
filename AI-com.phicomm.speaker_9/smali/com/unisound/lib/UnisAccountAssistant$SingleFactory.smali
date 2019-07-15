.class final Lcom/unisound/lib/UnisAccountAssistant$SingleFactory;
.super Ljava/lang/Object;
.source "UnisAccountAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/UnisAccountAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/UnisAccountAssistant;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    new-instance v0, Lcom/unisound/lib/UnisAccountAssistant;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/UnisAccountAssistant;-><init>(Lcom/unisound/lib/UnisAccountAssistant$1;)V

    sput-object v0, Lcom/unisound/lib/UnisAccountAssistant$SingleFactory;->instant:Lcom/unisound/lib/UnisAccountAssistant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
