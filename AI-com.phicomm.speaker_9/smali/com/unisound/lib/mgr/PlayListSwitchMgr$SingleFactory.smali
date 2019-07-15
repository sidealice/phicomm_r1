.class final Lcom/unisound/lib/mgr/PlayListSwitchMgr$SingleFactory;
.super Ljava/lang/Object;
.source "PlayListSwitchMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/mgr/PlayListSwitchMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/mgr/PlayListSwitchMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/unisound/lib/mgr/PlayListSwitchMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/mgr/PlayListSwitchMgr;-><init>(Lcom/unisound/lib/mgr/PlayListSwitchMgr$1;)V

    sput-object v0, Lcom/unisound/lib/mgr/PlayListSwitchMgr$SingleFactory;->instant:Lcom/unisound/lib/mgr/PlayListSwitchMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
