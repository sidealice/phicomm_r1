.class Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$4;
.super Landroid/database/ContentObserver;
.source "AlbumSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;


# direct methods
.method constructor <init>(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;Landroid/os/Handler;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$4;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$4;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$300(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V

    return-void
.end method
