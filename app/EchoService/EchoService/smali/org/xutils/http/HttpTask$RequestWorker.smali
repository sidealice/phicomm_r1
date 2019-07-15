.class final Lorg/xutils/http/HttpTask$RequestWorker;
.super Ljava/lang/Object;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/http/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestWorker"
.end annotation


# instance fields
.field ex:Ljava/lang/Throwable;

.field result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/xutils/http/HttpTask;


# direct methods
.method private constructor <init>(Lorg/xutils/http/HttpTask;)V
    .locals 0

    .prologue
    .line 572
    .local p0, "this":Lorg/xutils/http/HttpTask$RequestWorker;, "Lorg/xutils/http/HttpTask<TResultType;>.RequestWorker;"
    iput-object p1, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    return-void
.end method

.method synthetic constructor <init>(Lorg/xutils/http/HttpTask;Lorg/xutils/http/HttpTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/xutils/http/HttpTask;
    .param p2, "x1"    # Lorg/xutils/http/HttpTask$1;

    .prologue
    .line 568
    .local p0, "this":Lorg/xutils/http/HttpTask$RequestWorker;, "Lorg/xutils/http/HttpTask<TResultType;>.RequestWorker;"
    invoke-direct {p0, p1}, Lorg/xutils/http/HttpTask$RequestWorker;-><init>(Lorg/xutils/http/HttpTask;)V

    return-void
.end method


# virtual methods
.method public request()V
    .locals 14

    .prologue
    .line 577
    .local p0, "this":Lorg/xutils/http/HttpTask$RequestWorker;, "Lorg/xutils/http/HttpTask<TResultType;>.RequestWorker;"
    const/4 v6, 0x0

    .line 578
    .local v6, "interrupted":Z
    :try_start_0
    const-class v10, Ljava/io/File;

    iget-object v11, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v11}, Lorg/xutils/http/HttpTask;->access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v11

    if-ne v10, v11, :cond_1

    .line 579
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 580
    :goto_0
    :try_start_1
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    const/4 v12, 0x3

    if-lt v10, v12, :cond_0

    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    .line 581
    invoke-virtual {v10}, Lorg/xutils/http/HttpTask;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_0

    .line 583
    :try_start_2
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    const-wide/16 v12, 0xa

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v5

    .line 585
    .local v5, "iex":Ljava/lang/InterruptedException;
    const/4 v6, 0x1

    .line 590
    .end local v5    # "iex":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 591
    :try_start_4
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 594
    :cond_1
    if-nez v6, :cond_2

    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-virtual {v10}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 595
    :cond_2
    new-instance v11, Lorg/xutils/common/Callback$CancelledException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cancelled before request"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v6, :cond_8

    const-string v10, "(interrupted)"

    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 608
    :catch_1
    move-exception v3

    .line 609
    .local v3, "ex":Ljava/lang/Throwable;
    :try_start_5
    iput-object v3, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    .line 610
    instance-of v10, v3, Lorg/xutils/ex/HttpException;

    if-eqz v10, :cond_5

    .line 611
    move-object v0, v3

    check-cast v0, Lorg/xutils/ex/HttpException;

    move-object v4, v0

    .line 612
    .local v4, "httpEx":Lorg/xutils/ex/HttpException;
    invoke-virtual {v4}, Lorg/xutils/ex/HttpException;->getCode()I

    move-result v2

    .line 613
    .local v2, "errorCode":I
    const/16 v10, 0x12d

    if-eq v2, v10, :cond_3

    const/16 v10, 0x12e

    if-ne v2, v10, :cond_5

    .line 614
    :cond_3
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v10}, Lorg/xutils/http/HttpTask;->access$600(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xutils/http/RequestParams;->getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v7

    .line 615
    .local v7, "redirectHandler":Lorg/xutils/http/app/RedirectHandler;
    if-eqz v7, :cond_5

    .line 617
    :try_start_6
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v10}, Lorg/xutils/http/HttpTask;->access$500(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/xutils/http/app/RedirectHandler;->getRedirectParams(Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/RequestParams;

    move-result-object v8

    .line 618
    .local v8, "redirectParams":Lorg/xutils/http/RequestParams;
    if-eqz v8, :cond_5

    .line 619
    invoke-virtual {v8}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v10

    if-nez v10, :cond_4

    .line 620
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v10}, Lorg/xutils/http/HttpTask;->access$600(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/xutils/http/RequestParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    .line 623
    :cond_4
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v10, v8}, Lorg/xutils/http/HttpTask;->access$602(Lorg/xutils/http/HttpTask;Lorg/xutils/http/RequestParams;)Lorg/xutils/http/RequestParams;

    .line 624
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    iget-object v11, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v11}, Lorg/xutils/http/HttpTask;->access$700(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/xutils/http/HttpTask;->access$502(Lorg/xutils/http/HttpTask;Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/request/UriRequest;

    .line 625
    new-instance v10, Lorg/xutils/ex/HttpRedirectException;

    invoke-virtual {v4}, Lorg/xutils/ex/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lorg/xutils/ex/HttpException;->getResult()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v2, v11, v12}, Lorg/xutils/ex/HttpRedirectException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 634
    .end local v2    # "errorCode":I
    .end local v4    # "httpEx":Lorg/xutils/ex/HttpException;
    .end local v7    # "redirectHandler":Lorg/xutils/http/app/RedirectHandler;
    .end local v8    # "redirectParams":Lorg/xutils/http/RequestParams;
    :cond_5
    :goto_2
    const-class v10, Ljava/io/File;

    iget-object v11, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v11}, Lorg/xutils/http/HttpTask;->access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v11

    if-ne v10, v11, :cond_6

    .line 635
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    monitor-enter v11

    .line 636
    :try_start_7
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 637
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 638
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 641
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_6
    :goto_3
    return-void

    .line 590
    :catchall_0
    move-exception v10

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v10
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 634
    :catchall_1
    move-exception v10

    const-class v11, Ljava/io/File;

    iget-object v12, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v12}, Lorg/xutils/http/HttpTask;->access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v12

    if-ne v11, v12, :cond_7

    .line 635
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    monitor-enter v11

    .line 636
    :try_start_a
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 637
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 638
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_7
    throw v10

    .line 595
    :cond_8
    :try_start_b
    const-string v10, ""
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 599
    :cond_9
    :try_start_c
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v10}, Lorg/xutils/http/HttpTask;->access$500(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v10

    iget-object v11, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v11}, Lorg/xutils/http/HttpTask;->access$400(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/app/RequestInterceptListener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/xutils/http/request/UriRequest;->setRequestInterceptListener(Lorg/xutils/http/app/RequestInterceptListener;)V

    .line 600
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v10}, Lorg/xutils/http/HttpTask;->access$500(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xutils/http/request/UriRequest;->loadResult()Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->result:Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 605
    :goto_4
    :try_start_d
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    if-eqz v10, :cond_a

    .line 606
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    throw v10

    .line 601
    :catch_2
    move-exception v3

    .line 602
    .restart local v3    # "ex":Ljava/lang/Throwable;
    iput-object v3, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    .line 634
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_a
    const-class v10, Ljava/io/File;

    iget-object v11, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v11}, Lorg/xutils/http/HttpTask;->access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v11

    if-ne v10, v11, :cond_6

    .line 635
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    monitor-enter v11

    .line 636
    :try_start_e
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 637
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 638
    monitor-exit v11

    goto :goto_3

    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v10

    .line 627
    .restart local v2    # "errorCode":I
    .restart local v3    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "httpEx":Lorg/xutils/ex/HttpException;
    .restart local v7    # "redirectHandler":Lorg/xutils/http/app/RedirectHandler;
    :catch_3
    move-exception v9

    .line 628
    .local v9, "throwable":Ljava/lang/Throwable;
    :try_start_f
    iput-object v3, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_2

    .line 638
    .end local v2    # "errorCode":I
    .end local v4    # "httpEx":Lorg/xutils/ex/HttpException;
    .end local v7    # "redirectHandler":Lorg/xutils/http/app/RedirectHandler;
    .end local v9    # "throwable":Ljava/lang/Throwable;
    :catchall_3
    move-exception v10

    :try_start_10
    monitor-exit v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v10

    .end local v3    # "ex":Ljava/lang/Throwable;
    :catchall_4
    move-exception v10

    :try_start_11
    monitor-exit v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw v10

    .line 587
    :catch_4
    move-exception v10

    goto/16 :goto_0
.end method
