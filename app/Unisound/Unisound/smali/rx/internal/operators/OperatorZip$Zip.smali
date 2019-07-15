.class final Lrx/internal/operators/OperatorZip$Zip;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Zip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;"
    }
.end annotation


# static fields
.field static final THRESHOLD:I


# instance fields
.field private final child:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final childSubscription:Lrx/subscriptions/CompositeSubscription;

.field emitted:I

.field private observers:[Ljava/lang/Object;

.field private requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 185
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "zipFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 183
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    .line 193
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 194
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    .line 195
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 196
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorZip$Zip;)Lrx/Observer;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorZip$Zip;

    .prologue
    .line 180
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    return-object v0
.end method


# virtual methods
.method public start([Lrx/Observable;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 4
    .param p1, "os"    # [Lrx/Observable;
    .param p2, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;

    .prologue
    .line 200
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    .line 201
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 203
    new-instance v1, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 204
    .local v1, "io":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iget-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 205
    iget-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "io":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 209
    aget-object v3, p1, v0

    iget-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-virtual {v3, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    :cond_1
    return-void
.end method

.method tick()V
    .locals 20

    .prologue
    .line 222
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    .line 223
    .local v13, "observers":[Ljava/lang/Object;
    if-nez v13, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorZip$Zip;->getAndIncrement()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_0

    .line 228
    array-length v10, v13

    .line 229
    .local v10, "length":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 230
    .local v5, "child":Lrx/Observer;, "Lrx/Observer<-TR;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 234
    .local v14, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2
    :goto_1
    new-array v15, v10, [Ljava/lang/Object;

    .line 235
    .local v15, "vs":[Ljava/lang/Object;
    const/4 v2, 0x1

    .line 236
    .local v2, "allHaveValues":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v10, :cond_5

    .line 237
    aget-object v16, v13, v7

    check-cast v16, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    move-object/from16 v0, v16

    iget-object v4, v0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 238
    .local v4, "buffer":Lrx/internal/util/RxRingBuffer;
    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v11

    .line 240
    .local v11, "n":Ljava/lang/Object;
    if-nez v11, :cond_3

    .line 241
    const/4 v2, 0x0

    .line 236
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 245
    :cond_3
    invoke-virtual {v4, v11}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 246
    invoke-interface {v5}, Lrx/Observer;->onCompleted()V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    goto :goto_0

    .line 252
    :cond_4
    invoke-virtual {v4, v11}, Lrx/internal/util/RxRingBuffer;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v15, v7

    goto :goto_3

    .line 256
    .end local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    .end local v11    # "n":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_9

    if-eqz v2, :cond_9

    .line 259
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 261
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    move-object v3, v13

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v9, :cond_7

    aget-object v12, v3, v8

    .line 269
    .local v12, "obj":Ljava/lang/Object;
    check-cast v12, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    .end local v12    # "obj":Ljava/lang/Object;
    iget-object v4, v12, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 270
    .restart local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    .line 272
    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 274
    invoke-interface {v5}, Lrx/Observer;->onCompleted()V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    goto/16 :goto_0

    .line 263
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :catch_0
    move-exception v6

    .line 264
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6, v5, v15}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 268
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v3    # "arr$":[Ljava/lang/Object;
    .restart local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 280
    .end local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    move/from16 v16, v0

    sget v17, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 281
    move-object v3, v13

    array-length v9, v3

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v9, :cond_8

    aget-object v12, v3, v8

    .line 282
    .restart local v12    # "obj":Ljava/lang/Object;
    check-cast v12, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    .end local v12    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->requestMore(J)V

    .line 281
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 284
    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    goto/16 :goto_1

    .line 290
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorZip$Zip;->decrementAndGet()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_2

    goto/16 :goto_0
.end method
