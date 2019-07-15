.class Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->f(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "WXPhoto"

    const-string v0, "start to open system camera."

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->n()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->n()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Camera Permission Denied"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/alibaba/sdk/android/feedback/util/j;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/feedback/util/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/feedback/xblink/i/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->g(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "output"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->h(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->i(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0xfa1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->d(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Lcom/alibaba/sdk/android/feedback/xblink/view/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->d(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Lcom/alibaba/sdk/android/feedback/xblink/view/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/view/a;->b()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->f(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "WXPhoto"

    const-string v0, "start to pick photo from system album."

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->j(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->k(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0xfa2

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->d(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Lcom/alibaba/sdk/android/feedback/xblink/view/a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->d(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Lcom/alibaba/sdk/android/feedback/xblink/view/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/view/a;->b()V

    :cond_6
    return-void

    :cond_7
    const-string p1, "WXPhoto"

    const-string v0, "take photo cancel, and callback."

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/x;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;->e(Lcom/alibaba/sdk/android/feedback/xblink/f/a/u;)Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    move-result-object p1

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V

    return-void
.end method
