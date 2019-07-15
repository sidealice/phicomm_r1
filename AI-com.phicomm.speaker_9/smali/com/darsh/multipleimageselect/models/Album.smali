.class public Lcom/darsh/multipleimageselect/models/Album;
.super Ljava/lang/Object;
.source "Album.java"


# instance fields
.field public cover:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/darsh/multipleimageselect/models/Album;->name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/darsh/multipleimageselect/models/Album;->cover:Ljava/lang/String;

    return-void
.end method
