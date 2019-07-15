.class public Lcom/bumptech/glide/load/model/f;
.super Ljava/lang/Object;
.source "ImageVideoWrapper.java"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bumptech/glide/load/model/f;->a:Ljava/io/InputStream;

    .line 16
    iput-object p2, p0, Lcom/bumptech/glide/load/model/f;->b:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/model/f;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public b()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/load/model/f;->b:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method
