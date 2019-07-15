.class final Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter$2;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter;->setSampling(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic c:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 766
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 770
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    iget v1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter$2;->c:I

    invoke-interface {v0, v1}, Lcom/alibaba/mtl/appmonitor/IMonitor;->offlinecounter_setSampling(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 772
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
