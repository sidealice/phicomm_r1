.class Lcom/phicomm/speaker/model/confignet/ApClient$1;
.super Ljava/util/TimerTask;
.source "ApClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/model/confignet/ApClient;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/model/confignet/ApClient;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/model/confignet/ApClient;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/phicomm/speaker/model/confignet/ApClient$1;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/phicomm/speaker/model/confignet/ApClient$1;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-static {v2}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Lcom/phicomm/speaker/model/confignet/ApClient;)J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x1388

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient$1;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-static {v0}, Lcom/phicomm/speaker/model/confignet/ApClient;->b(Lcom/phicomm/speaker/model/confignet/ApClient;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/ApClient$1;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-static {v0, p0}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Lcom/phicomm/speaker/model/confignet/ApClient;Ljava/util/TimerTask;)V

    :cond_0
    return-void
.end method
