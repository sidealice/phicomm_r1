.class final Lcom/unisound/lib/UnisMusicAssistant$SingleFactory;
.super Ljava/lang/Object;
.source "UnisMusicAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/UnisMusicAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/UnisMusicAssistant;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/unisound/lib/UnisMusicAssistant;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/UnisMusicAssistant;-><init>(Lcom/unisound/lib/UnisMusicAssistant$1;)V

    sput-object v0, Lcom/unisound/lib/UnisMusicAssistant$SingleFactory;->instant:Lcom/unisound/lib/UnisMusicAssistant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
