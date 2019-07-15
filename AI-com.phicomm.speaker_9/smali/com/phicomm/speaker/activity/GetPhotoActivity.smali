.class public abstract Lcom/phicomm/speaker/activity/GetPhotoActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "GetPhotoActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/c/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const-string v0, "imageUrl"

    .line 30
    iput-object v0, p0, Lcom/phicomm/speaker/activity/GetPhotoActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/phicomm/speaker/f/l;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1, p0}, Lcom/phicomm/speaker/f/l;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/phicomm/speaker/c/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    .line 90
    invoke-static {p1}, Lcom/phicomm/speaker/f/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 91
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 93
    invoke-static {}, Lcom/phicomm/speaker/f/v;->c()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    .line 98
    new-array v4, v3, [B

    :goto_0
    const/4 v5, 0x0

    .line 99
    invoke-virtual {v1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 100
    invoke-virtual {v0, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 103
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 105
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 107
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/activity/GetPhotoActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcom/phicomm/speaker/f/l;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method public b_()V
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/phicomm/speaker/f/l;->a(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/GetPhotoActivity;->b:Landroid/net/Uri;

    return-void
.end method

.method public c(Landroid/net/Uri;)V
    .locals 0

    .line 71
    invoke-static {p0, p1, p0}, Lcom/phicomm/speaker/f/l;->a(Landroid/app/Activity;Landroid/net/Uri;Lcom/phicomm/speaker/c/d;)V

    return-void
.end method

.method public d()V
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/phicomm/speaker/f/l;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/activity/GetPhotoActivity;->b:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0, p0}, Lcom/phicomm/speaker/f/l;->a(Landroid/app/Activity;IILandroid/net/Uri;Lcom/phicomm/speaker/c/d;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 124
    invoke-static {p0, p1, p2, p3, p0}, Lcom/phicomm/speaker/f/l;->a(Landroid/app/Activity;IILandroid/content/Intent;Lcom/phicomm/speaker/c/d;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 126
    invoke-static {p0, p1, p2, p3, p0}, Lcom/phicomm/speaker/f/l;->b(Landroid/app/Activity;IILandroid/content/Intent;Lcom/phicomm/speaker/c/d;)V

    .line 128
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "imageUrl"

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    new-instance v0, Lcom/phicomm/speaker/activity/GetPhotoActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/GetPhotoActivity$1;-><init>(Lcom/phicomm/speaker/activity/GetPhotoActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/phicomm/speaker/activity/GetPhotoActivity;->b:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/activity/GetPhotoActivity;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v0, "imageUrl"

    .line 115
    iget-object v1, p0, Lcom/phicomm/speaker/activity/GetPhotoActivity;->b:Landroid/net/Uri;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
