.class final Lcom/alibaba/sdk/android/utils/AMSDevReporter$1;
.super Ljava/lang/Object;
.source "AMSDevReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/utils/AMSDevReporter;->asyncReport(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$1;->a:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    iput-object p2, p0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 141
    invoke-static {}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a()Lcom/alibaba/sdk/android/utils/c;

    move-result-object v0

    const-string v1, "Unable to execute remain task in queue, return."

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/utils/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a()Lcom/alibaba/sdk/android/utils/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$1;->a:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] from report queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/utils/c;->b(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$1;->a:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    iget-object v1, p0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$1;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->b(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V

    :goto_0
    return-void
.end method
