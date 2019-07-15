.class Lcom/alibaba/sdk/android/feedback/windvane/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

.field final synthetic b:Lcom/alibaba/sdk/android/feedback/windvane/e;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/windvane/e;Lcom/alibaba/sdk/android/feedback/xblink/webview/v;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/f;->b:Lcom/alibaba/sdk/android/feedback/windvane/e;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/windvane/f;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/f;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/v;->e()V

    return-void
.end method
