.class Lcn/kuwo/autosdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static synthetic d:[I


# instance fields
.field final synthetic a:Lcn/kuwo/autosdk/b;

.field private final synthetic b:Lcn/kuwo/autosdk/e;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcn/kuwo/autosdk/b;Lcn/kuwo/autosdk/e;I)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iput-object p2, p0, Lcn/kuwo/autosdk/c;->b:Lcn/kuwo/autosdk/e;

    iput p3, p0, Lcn/kuwo/autosdk/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcn/kuwo/autosdk/c;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/kuwo/autosdk/e;->a()[Lcn/kuwo/autosdk/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcn/kuwo/autosdk/e;->b:Lcn/kuwo/autosdk/e;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcn/kuwo/autosdk/e;->c:Lcn/kuwo/autosdk/e;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/e;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcn/kuwo/autosdk/e;->a:Lcn/kuwo/autosdk/e;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcn/kuwo/autosdk/c;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-boolean v0, v0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/autosdk/c;->a()[I

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/autosdk/c;->b:Lcn/kuwo/autosdk/e;

    invoke-virtual {v2}, Lcn/kuwo/autosdk/e;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v0, v0, Lcn/kuwo/autosdk/b;->x:Lcn/kuwo/autosdk/f;

    iget-object v2, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget v3, p0, Lcn/kuwo/autosdk/c;->c:I

    iget-object v4, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v4, v4, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-interface {v0, v2, v3, v4}, Lcn/kuwo/autosdk/f;->a(Lcn/kuwo/autosdk/b;ILcn/kuwo/autosdk/a;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v0, v0, Lcn/kuwo/autosdk/b;->x:Lcn/kuwo/autosdk/f;

    iget-object v2, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v3, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v3, v3, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-interface {v0, v2, v3}, Lcn/kuwo/autosdk/f;->b(Lcn/kuwo/autosdk/b;Lcn/kuwo/autosdk/a;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v0, v0, Lcn/kuwo/autosdk/b;->x:Lcn/kuwo/autosdk/f;

    iget-object v2, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v3, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v3, v3, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-interface {v0, v2, v3}, Lcn/kuwo/autosdk/f;->a(Lcn/kuwo/autosdk/b;Lcn/kuwo/autosdk/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
