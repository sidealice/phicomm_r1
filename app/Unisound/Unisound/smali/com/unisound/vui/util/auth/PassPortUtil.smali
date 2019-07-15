.class public Lcom/unisound/vui/util/auth/PassPortUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPassportManager:Lcom/unisound/passport/PassportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unisound/vui/util/auth/PassPortUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/util/auth/PassPortUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/util/auth/PassPortUtil;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/auth/PassPortUtil;->mPassportManager:Lcom/unisound/passport/PassportManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/auth/PassPortUtil;->mPassportManager:Lcom/unisound/passport/PassportManager;

    invoke-virtual {v0}, Lcom/unisound/passport/PassportManager;->closeConnection()V

    :cond_0
    return-void
.end method

.method public initPassPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "udid"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/unisound/passport/PassportManager;

    iget-object v1, p0, Lcom/unisound/vui/util/auth/PassPortUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/unisound/passport/PassportManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/vui/util/auth/PassPortUtil;->mPassportManager:Lcom/unisound/passport/PassportManager;

    return-void
.end method

.method public openConnection()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/auth/PassPortUtil;->mPassportManager:Lcom/unisound/passport/PassportManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/auth/PassPortUtil;->mPassportManager:Lcom/unisound/passport/PassportManager;

    invoke-virtual {v0}, Lcom/unisound/passport/PassportManager;->openConnection()V

    :cond_0
    return-void
.end method

.method public setPassPortListener(Lcom/unisound/passport/PassportListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/unisound/passport/PassportListener;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/auth/PassPortUtil;->mPassportManager:Lcom/unisound/passport/PassportManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/auth/PassPortUtil;->mPassportManager:Lcom/unisound/passport/PassportManager;

    invoke-virtual {v0, p1}, Lcom/unisound/passport/PassportManager;->setPassportListener(Lcom/unisound/passport/PassportListener;)V

    :cond_0
    return-void
.end method
