.class final Lcom/unisound/lib/self/mgr/SelfContractMgr$SingleFactory;
.super Ljava/lang/Object;
.source "SelfContractMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/self/mgr/SelfContractMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/self/mgr/SelfContractMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 152
    new-instance v0, Lcom/unisound/lib/self/mgr/SelfContractMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/self/mgr/SelfContractMgr;-><init>(Lcom/unisound/lib/self/mgr/SelfContractMgr$1;)V

    sput-object v0, Lcom/unisound/lib/self/mgr/SelfContractMgr$SingleFactory;->instant:Lcom/unisound/lib/self/mgr/SelfContractMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
