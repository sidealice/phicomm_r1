.class Lcom/alibaba/sdk/android/feedback/xblink/f/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/v;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-nez p2, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    sget-object v0, Lcom/alibaba/sdk/android/feedback/util/j;->a:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/v;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/sdk/android/feedback/util/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;Ljava/lang/String;)Ljava/lang/String;

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/v;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "output"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/v;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;ILandroid/content/Intent;)V

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/v;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/v;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->c(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    const/16 v0, 0xfa1

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/v;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->d(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Lcom/alibaba/sdk/android/feedback/xblink/view/a;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/v;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {v0, p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/v;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->d(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Lcom/alibaba/sdk/android/feedback/xblink/view/a;

    move-result-object p1

    if-eqz p1, :cond_3

    :goto_2
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/v;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->d(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Lcom/alibaba/sdk/android/feedback/xblink/view/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/view/a;->b()V

    :cond_3
    return-void
.end method
