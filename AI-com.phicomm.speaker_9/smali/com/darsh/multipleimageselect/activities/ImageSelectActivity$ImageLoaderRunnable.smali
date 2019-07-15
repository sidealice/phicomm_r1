.class Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;
.super Ljava/lang/Object;
.source "ImageSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoaderRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;


# direct methods
.method private constructor <init>(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$1;)V
    .locals 0

    .line 405
    invoke-direct {p0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;-><init>(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/16 v0, 0xa

    .line 408
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 411
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1000(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1700(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7d1

    .line 418
    iput v1, v0, Landroid/os/Message;->what:I

    .line 419
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 422
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 427
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 428
    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 430
    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 431
    iget-object v4, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v4}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/darsh/multipleimageselect/models/Image;

    .line 432
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Lcom/darsh/multipleimageselect/models/Image;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lcom/darsh/multipleimageselect/models/Image;->isSelected:Z

    if-eqz v5, :cond_2

    .line 434
    iget-wide v4, v4, Lcom/darsh/multipleimageselect/models/Image;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 439
    :cond_3
    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-virtual {v1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1800(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "bucket_display_name =?"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    iget-object v8, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    .line 440
    invoke-static {v8}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1900(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "date_added"

    .line 439
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_4

    .line 443
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1700(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7d5

    .line 444
    iput v1, v0, Landroid/os/Message;->what:I

    .line 445
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 456
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 458
    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v2

    .line 460
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_6

    return-void

    .line 464
    :cond_6
    iget-object v6, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v6}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1800(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 465
    iget-object v6, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v6}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1800(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 466
    iget-object v6, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v6}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1800(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 467
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 472
    :cond_7
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 474
    new-instance v6, Lcom/darsh/multipleimageselect/models/Image;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/darsh/multipleimageselect/models/Image;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v6

    if-nez v6, :cond_5

    move v2, v5

    .line 479
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 481
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_a

    .line 482
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1102(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 484
    :cond_a
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 485
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 487
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1700(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7d2

    .line 488
    iput v1, v0, Landroid/os/Message;->what:I

    .line 489
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 490
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 492
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void
.end method
