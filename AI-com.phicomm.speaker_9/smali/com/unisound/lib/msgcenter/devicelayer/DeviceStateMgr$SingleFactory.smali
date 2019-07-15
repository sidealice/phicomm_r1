.class final Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr$SingleFactory;
.super Ljava/lang/Object;
.source "DeviceStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;-><init>(Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr$1;)V

    sput-object v0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr$SingleFactory;->instant:Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
