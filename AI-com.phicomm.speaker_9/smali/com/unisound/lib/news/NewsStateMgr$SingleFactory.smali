.class final Lcom/unisound/lib/news/NewsStateMgr$SingleFactory;
.super Ljava/lang/Object;
.source "NewsStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/news/NewsStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/news/NewsStateMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/unisound/lib/news/NewsStateMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/news/NewsStateMgr;-><init>(Lcom/unisound/lib/news/NewsStateMgr$1;)V

    sput-object v0, Lcom/unisound/lib/news/NewsStateMgr$SingleFactory;->instant:Lcom/unisound/lib/news/NewsStateMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
