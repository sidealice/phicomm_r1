.class Lcom/alibaba/sdk/android/feedback/util/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/util/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/util/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/b;->a:Lcom/alibaba/sdk/android/feedback/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/b;->a:Lcom/alibaba/sdk/android/feedback/util/a;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/util/a;->a(Lcom/alibaba/sdk/android/feedback/util/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
