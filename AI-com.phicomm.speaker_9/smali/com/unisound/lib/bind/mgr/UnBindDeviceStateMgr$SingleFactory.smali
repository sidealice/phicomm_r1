.class final Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr$SingleFactory;
.super Ljava/lang/Object;
.source "UnBindDeviceStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;-><init>(Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr$1;)V

    sput-object v0, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr$SingleFactory;->instant:Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
