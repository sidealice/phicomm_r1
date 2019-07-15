.class final Lcom/alibaba/mtl/appmonitor/AppMonitor$2;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;->setStatisticsInterval(Lcom/alibaba/mtl/appmonitor/a/f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1096
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$2;->a:I

    iput p2, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1100
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    iget v1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$2;->a:I

    iget v2, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$2;->b:I

    invoke-interface {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/IMonitor;->setStatisticsInterval2(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1102
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
