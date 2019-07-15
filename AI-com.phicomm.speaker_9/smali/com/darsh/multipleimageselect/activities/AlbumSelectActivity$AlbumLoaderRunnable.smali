.class Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;
.super Ljava/lang/Object;
.source "AlbumSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLoaderRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;


# direct methods
.method private constructor <init>(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$1;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;-><init>(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, 0xa

    .line 328
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 331
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$700(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$1100(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7d1

    .line 333
    iput v1, v0, Landroid/os/Message;->what:I

    .line 334
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 337
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-virtual {v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    .line 342
    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$1200(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date_added"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$1100(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7d5

    .line 347
    iput v1, v0, Landroid/os/Message;->what:I

    .line 348
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 352
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 356
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 358
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 362
    :cond_4
    iget-object v3, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {v3}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$1200(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 363
    iget-object v4, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {v4}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$1200(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 371
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 373
    new-instance v5, Lcom/darsh/multipleimageselect/models/Album;

    invoke-direct {v5, v3, v4}, Lcom/darsh/multipleimageselect/models/Album;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    if-nez v3, :cond_3

    .line 379
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 381
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$100(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_7

    .line 382
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$102(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 384
    :cond_7
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$100(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$100(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 387
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->access$1100(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7d2

    .line 388
    iput v1, v0, Landroid/os/Message;->what:I

    .line 389
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 391
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void
.end method
