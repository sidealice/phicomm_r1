.class public Lcom/phicomm/speaker/manager/imageloader/GlideConfig;
.super Ljava/lang/Object;
.source "GlideConfig.java"

# interfaces
.implements Lcom/bumptech/glide/module/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 2

    .line 20
    sget-object p1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/GlideBuilder;->a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/GlideBuilder;

    .line 22
    invoke-static {}, Lcom/phicomm/speaker/f/v;->b()Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/d;

    const/high16 v1, 0x3200000

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/engine/cache/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GlideBuilder;->a(Lcom/bumptech/glide/load/engine/cache/a$a;)Lcom/bumptech/glide/GlideBuilder;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .locals 0

    return-void
.end method
