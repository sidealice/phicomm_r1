.class public Lcn/kuwo/autosdk/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:I

.field public c:[B

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:J

.field public n:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/autosdk/a;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/autosdk/a;->d:J

    iget-wide v0, p0, Lcn/kuwo/autosdk/a;->d:J

    iput-wide v0, p0, Lcn/kuwo/autosdk/a;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/autosdk/a;->f:J

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/a;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/a;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/a;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/a;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/a;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/a;->a:Z

    return v0
.end method
