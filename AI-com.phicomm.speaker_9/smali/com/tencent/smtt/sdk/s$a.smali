.class Lcom/tencent/smtt/sdk/s$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/sdk/WebStorage$QuotaUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/tencent/smtt/export/external/interfaces/QuotaUpdater;

.field final synthetic b:Lcom/tencent/smtt/sdk/s;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/s;Lcom/tencent/smtt/export/external/interfaces/QuotaUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/s$a;->b:Lcom/tencent/smtt/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/s$a;->a:Lcom/tencent/smtt/export/external/interfaces/QuotaUpdater;

    return-void
.end method


# virtual methods
.method public updateQuota(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/s$a;->a:Lcom/tencent/smtt/export/external/interfaces/QuotaUpdater;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/QuotaUpdater;->updateQuota(J)V

    return-void
.end method
