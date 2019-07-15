.class Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$4;
.super Landroid/database/ContentObserver;
.source "ImageSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;


# direct methods
.method constructor <init>(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;Landroid/os/Handler;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$4;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$4;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$600(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V

    return-void
.end method
