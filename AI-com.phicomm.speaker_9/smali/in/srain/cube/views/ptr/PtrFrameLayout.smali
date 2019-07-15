.class public Lin/srain/cube/views/ptr/PtrFrameLayout;
.super Landroid/view/ViewGroup;
.source "PtrFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/ptr/PtrFrameLayout$b;,
        Lin/srain/cube/views/ptr/PtrFrameLayout$a;,
        Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;
    }
.end annotation


# static fields
.field public static a:Z = false

.field private static e:I = 0x1

.field private static f:B = 0x1t

.field private static g:B = 0x2t

.field private static h:B = 0x4t

.field private static i:B = 0x8t

.field private static j:B = 0x3t


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Landroid/view/MotionEvent;

.field private H:Lin/srain/cube/views/ptr/g;

.field private I:I

.field private J:J

.field private K:Lin/srain/cube/views/ptr/a/a;

.field private L:Z

.field private M:Ljava/lang/Runnable;

.field protected final b:Ljava/lang/String;

.field protected c:Landroid/view/View;

.field private d:B

.field private k:I

.field private l:I

.field private m:I

.field private n:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Lin/srain/cube/views/ptr/f;

.field private y:Lin/srain/cube/views/ptr/c;

.field private z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 26
    iput-byte p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ptr-frame-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:I

    add-int/2addr v1, p3

    sput v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    .line 45
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:I

    .line 46
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    .line 48
    sget-object v1, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->BOTH:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    const/16 v1, 0xc8

    .line 51
    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:I

    .line 52
    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:I

    const/16 v1, 0x3e8

    .line 54
    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    .line 55
    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    .line 57
    iput-boolean p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Z

    .line 58
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Z

    .line 59
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:Z

    .line 62
    invoke-static {}, Lin/srain/cube/views/ptr/f;->b()Lin/srain/cube/views/ptr/f;

    move-result-object p3

    iput-object p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    .line 71
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Z

    .line 72
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    .line 75
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Z

    const/16 p3, 0x1f4

    .line 81
    iput p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->I:I

    const-wide/16 v1, 0x0

    .line 82
    iput-wide v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->J:J

    .line 84
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->L:Z

    .line 85
    new-instance p3, Lin/srain/cube/views/ptr/PtrFrameLayout$1;

    invoke-direct {p3, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$1;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    iput-object p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->M:Ljava/lang/Runnable;

    .line 103
    new-instance p3, Lin/srain/cube/views/ptr/a/a;

    invoke-direct {p3}, Lin/srain/cube/views/ptr/a/a;-><init>()V

    iput-object p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    .line 105
    sget-object p3, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout:[I

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_header:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    .line 108
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_content:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:I

    .line 109
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_footer:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    .line 111
    iget-object p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    sget p3, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_resistance:I

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->c()F

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p2, p3}, Lin/srain/cube/views/ptr/a/a;->a(F)V

    .line 112
    iget-object p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    sget p3, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_resistance:I

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->d()F

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p2, p3}, Lin/srain/cube/views/ptr/a/a;->b(F)V

    .line 113
    iget-object p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    sget p3, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_resistance_header:I

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->c()F

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p2, p3}, Lin/srain/cube/views/ptr/a/a;->a(F)V

    .line 114
    iget-object p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    sget p3, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_resistance_footer:I

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->d()F

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p2, p3}, Lin/srain/cube/views/ptr/a/a;->b(F)V

    .line 116
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_duration_to_back_refresh:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:I

    .line 117
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_duration_to_back_refresh:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:I

    .line 118
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_duration_to_back_header:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:I

    .line 119
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_duration_to_back_footer:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:I

    .line 121
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_duration_to_close_either:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    .line 122
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_duration_to_close_either:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    .line 123
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_duration_to_close_header:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    .line 124
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_duration_to_close_footer:I

    iget p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    .line 126
    iget-object p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p2}, Lin/srain/cube/views/ptr/a/a;->h()F

    move-result p2

    .line 127
    sget p3, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_ratio_of_header_height_to_refresh:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 128
    iget-object p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p3, p2}, Lin/srain/cube/views/ptr/a/a;->c(F)V

    .line 130
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_keep_header_when_refresh:I

    iget-boolean p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Z

    .line 132
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_pull_to_fresh:I

    iget-boolean p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Z

    .line 134
    sget p2, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout_ptr_mode:I

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-direct {p0, p2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(I)Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    move-result-object p2

    iput-object p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    .line 136
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    :cond_0
    new-instance p1, Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    invoke-direct {p1, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    .line 141
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:I

    return-void
.end method

.method private a(I)Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 156
    sget-object p1, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->BOTH:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    return-object p1

    .line 154
    :pswitch_0
    sget-object p1, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->BOTH:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    return-object p1

    .line 152
    :pswitch_1
    sget-object p1, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->LOAD_MORE:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    return-object p1

    .line 150
    :pswitch_2
    sget-object p1, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->REFRESH:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    return-object p1

    .line 148
    :pswitch_3
    sget-object p1, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->NONE:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()V
    .locals 10

    .line 348
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->m()I

    move-result v0

    move v2, v1

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->m()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 355
    :goto_0
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v3

    .line 356
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v4

    .line 359
    sget-boolean v5, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    .line 363
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 364
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 365
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v3

    .line 366
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v4

    add-int/2addr v5, v0

    iget v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    sub-int/2addr v5, v7

    .line 367
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    .line 368
    iget-object v8, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    .line 369
    iget-object v9, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    invoke-virtual {v9, v6, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 370
    sget-boolean v5, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    .line 374
    :cond_1
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 375
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 380
    iget-object v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v6}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 381
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v3

    .line 382
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v4

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->i()Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v1

    :cond_2
    add-int/2addr v5, v0

    .line 383
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v6

    .line 384
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    goto :goto_2

    .line 386
    :cond_3
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v6, v3, v0

    .line 387
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->i()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    sub-int v5, v0, v5

    .line 388
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v6

    .line 389
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    .line 392
    :goto_2
    sget-boolean v8, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    .line 395
    iget-object v8, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v8, v6, v5, v0, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_5
    move v7, v1

    .line 397
    :goto_3
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 398
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 399
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    .line 400
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v0

    add-int/2addr v4, v7

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    sub-int/2addr v4, v1

    .line 401
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    .line 402
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    .line 403
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 404
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    :cond_7
    return-void
.end method

.method private a(F)V
    .locals 2

    .line 533
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/a/a;->a(Z)V

    neg-float p1, p1

    .line 535
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->c(F)V

    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 3

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 332
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 331
    invoke-static {p2, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 334
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 333
    invoke-static {p3, v1, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result p3

    .line 336
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->r()V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout;F)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(F)V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 654
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->o()Z

    .line 656
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 658
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Z

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 661
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 662
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->x()I

    move-result v0

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:I

    invoke-virtual {p1, v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a(II)V

    goto :goto_0

    .line 664
    :cond_0
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->x()I

    move-result v0

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:I

    invoke-virtual {p1, v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a(II)V

    goto :goto_0

    .line 670
    :cond_1
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->l()V

    goto :goto_0

    .line 673
    :cond_2
    iget-byte p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 674
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Z)V

    goto :goto_0

    .line 676
    :cond_3
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->n()V

    :cond_4
    :goto_0
    return-void
.end method

.method private a(ZBLin/srain/cube/views/ptr/a/a;)V
    .locals 0

    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/PtrFrameLayout;)Lin/srain/cube/views/ptr/a/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    return-object p0
.end method

.method private b(F)V
    .locals 2

    .line 539
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/a/a;->a(Z)V

    .line 540
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->c(F)V

    return-void
.end method

.method private b(I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 579
    iget-boolean v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->L:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 580
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->L:Z

    .line 581
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->u()V

    .line 585
    :cond_1
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->p()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    iget-byte v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    if-eq v2, v1, :cond_3

    :cond_2
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    .line 586
    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-byte v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    if-ne v2, v4, :cond_4

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 588
    :cond_3
    iput-byte v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 589
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    invoke-virtual {v2, p0}, Lin/srain/cube/views/ptr/f;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 590
    sget-boolean v2, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v2, :cond_4

    .line 591
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v6, "PtrUIHandler: onUIRefreshPrepare, mFlag %s"

    new-array v7, v1, [Ljava/lang/Object;

    iget v8, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v2, v6, v7}, Lin/srain/cube/views/ptr/b/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :cond_4
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 597
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->q()Z

    if-eqz v0, :cond_5

    .line 601
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->v()V

    .line 606
    :cond_5
    iget-byte v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    if-ne v2, v5, :cond_7

    if-eqz v0, :cond_6

    .line 608
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->g()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    .line 609
    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->u()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 610
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->o()Z

    .line 613
    :cond_6
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->t()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->v()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 614
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->o()Z

    .line 618
    :cond_7
    sget-boolean v2, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v2, :cond_8

    .line 619
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v6, "updatePos: change: %s, current: %s last: %s, top: %s, headerHeight: %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 620
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v3}, Lin/srain/cube/views/ptr/a/a;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/a/a;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    const/4 v1, 0x3

    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    .line 619
    invoke-static {v2, v6, v7}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    :cond_8
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 624
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 626
    :cond_9
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 628
    :goto_0
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->i()Z

    move-result v1

    if-nez v1, :cond_a

    .line 629
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 631
    :cond_a
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->invalidate()V

    .line 633
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/f;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 634
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    iget-byte v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p1, p0, v0, v1, v2}, Lin/srain/cube/views/ptr/f;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLin/srain/cube/views/ptr/a/a;)V

    .line 636
    :cond_b
    iget-byte p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-direct {p0, v0, p1, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(ZBLin/srain/cube/views/ptr/a/a;)V

    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/PtrFrameLayout;F)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(F)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 868
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->H:Lin/srain/cube/views/ptr/g;

    if-eqz p1, :cond_1

    .line 869
    sget-boolean p1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz p1, :cond_0

    .line 870
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v0, "notifyUIRefreshComplete mRefreshCompleteHook run."

    invoke-static {p1, v0}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_0
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->H:Lin/srain/cube/views/ptr/g;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/g;->a()V

    return-void

    .line 876
    :cond_1
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/f;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 877
    sget-boolean p1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz p1, :cond_2

    .line 878
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v0, "PtrUIHandler: onUIRefreshComplete"

    invoke-static {p1, v0}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_2
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lin/srain/cube/views/ptr/f;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;Z)V

    .line 882
    :cond_3
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/a/a;->f()V

    .line 883
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->m()V

    .line 884
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->q()Z

    return-void
.end method

.method private c(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 550
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    sget-boolean p1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz p1, :cond_0

    .line 552
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v0, "has reached the top"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lin/srain/cube/views/ptr/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 557
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->m()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr p1, v0

    .line 560
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 561
    sget-boolean p1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz p1, :cond_2

    .line 562
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v0, "over top"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lin/srain/cube/views/ptr/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move p1, v1

    .line 566
    :cond_3
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->b(I)V

    .line 567
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->l()I

    move-result v0

    sub-int/2addr p1, v0

    .line 568
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    neg-int p1, p1

    :goto_0
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(I)V

    return-void
.end method

.method private k()V
    .locals 3

    .line 705
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a(II)V

    return-void

    .line 710
    :cond_1
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 711
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    invoke-virtual {v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a(II)V

    :cond_2
    return-void
.end method

.method private l()V
    .locals 0

    .line 719
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->k()V

    return-void
.end method

.method private m()V
    .locals 0

    .line 726
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->k()V

    return-void
.end method

.method private n()V
    .locals 0

    .line 733
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->k()V

    return-void
.end method

.method private o()Z
    .locals 3

    .line 737
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 742
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->g()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    .line 743
    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 744
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->p()V

    :cond_3
    return v1
.end method

.method private p()V
    .locals 2

    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->J:J

    .line 751
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/f;->c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 753
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "PtrUIHandler: onUIRefreshBegin"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lin/srain/cube/views/ptr/c;

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lin/srain/cube/views/ptr/c;

    invoke-interface {v0, p0}, Lin/srain/cube/views/ptr/c;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    goto :goto_0

    .line 761
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lin/srain/cube/views/ptr/c;

    instance-of v0, v0, Lin/srain/cube/views/ptr/d;

    if-eqz v0, :cond_2

    .line 762
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lin/srain/cube/views/ptr/c;

    check-cast v0, Lin/srain/cube/views/ptr/d;

    invoke-interface {v0, p0}, Lin/srain/cube/views/ptr/d;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private q()Z
    .locals 2

    .line 772
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/f;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 775
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "PtrUIHandler: onUIReset"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 779
    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 780
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->s()V

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private r()V
    .locals 5

    const/4 v0, 0x4

    .line 844
    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 847
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->b(Lin/srain/cube/views/ptr/PtrFrameLayout$b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v2, "performRefreshComplete do nothing, scrolling: %s, auto refresh: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    .line 851
    invoke-static {v4}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->b(Lin/srain/cube/views/ptr/PtrFrameLayout$b;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 850
    invoke-static {v0, v2, v3}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 856
    :cond_1
    invoke-direct {p0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Z)V

    return-void
.end method

.method private s()V
    .locals 2

    .line 897
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:B

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    return-void
.end method

.method private t()Z
    .locals 2

    .line 937
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:B

    and-int/2addr v0, v1

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->g:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private u()V
    .locals 10

    .line 1224
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "send cancel event"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->G:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    return-void

    .line 1232
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->G:Landroid/view/MotionEvent;

    .line 1233
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    move-wide v3, v7

    move v7, v9

    move v8, v0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1234
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private v()V
    .locals 9

    .line 1238
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "send down event"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->G:Landroid/view/MotionEvent;

    .line 1242
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1243
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    return-void
.end method


# virtual methods
.method public a(Lin/srain/cube/views/ptr/e;)V
    .locals 1

    .line 1012
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    invoke-static {v0, p1}, Lin/srain/cube/views/ptr/f;->a(Lin/srain/cube/views/ptr/f;Lin/srain/cube/views/ptr/e;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 5

    .line 910
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 914
    :cond_0
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    if-eqz p1, :cond_1

    sget-byte v2, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:B

    goto :goto_0

    :cond_1
    sget-byte v2, Lin/srain/cube/views/ptr/PtrFrameLayout;->g:B

    :goto_0
    or-int/2addr v0, v2

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    const/4 v0, 0x2

    .line 916
    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 917
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 918
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lin/srain/cube/views/ptr/f;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/f;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 919
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_2

    .line 920
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v2, "PtrUIHandler: onUIRefreshPrepare, mFlag %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v2, v1}, Lin/srain/cube/views/ptr/b/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 923
    :cond_2
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p2}, Lin/srain/cube/views/ptr/a/a;->a(Z)V

    .line 925
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/a/a;->i()I

    move-result v1

    if-eqz p2, :cond_3

    iget p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    goto :goto_1

    :cond_3
    iget p2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    :goto_1
    invoke-virtual {v0, v1, p2}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a(II)V

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    .line 927
    iput-byte p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    .line 928
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->p()V

    :cond_4
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 411
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected b()V
    .locals 2

    .line 787
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "call onRelease after scroll abort"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 791
    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Z)V

    :cond_1
    return-void
.end method

.method protected c()V
    .locals 2

    .line 796
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "call onRelease after scroll finish"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 800
    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Z)V

    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1205
    instance-of p1, p1, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Z
    .locals 2

    .line 810
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    .line 416
    invoke-virtual/range {p0 .. p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v1, :cond_17

    iget-object v1, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 419
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    goto/16 :goto_7

    :pswitch_0
    move-object/from16 v1, p1

    .line 460
    iput-object v1, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->G:Landroid/view/MotionEvent;

    .line 461
    iget-object v5, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lin/srain/cube/views/ptr/a/a;->b(FF)V

    .line 462
    iget-object v5, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v5}, Lin/srain/cube/views/ptr/a/a;->j()F

    move-result v5

    .line 463
    iget-object v6, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v6}, Lin/srain/cube/views/ptr/a/a;->k()F

    move-result v6

    .line 465
    iget-boolean v7, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Z

    if-nez v7, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    .line 466
    iget-object v5, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v5}, Lin/srain/cube/views/ptr/a/a;->t()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 467
    iput-boolean v4, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Z

    .line 470
    :cond_1
    iget-boolean v5, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Z

    if-eqz v5, :cond_2

    .line 471
    invoke-virtual/range {p0 .. p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_2
    const/4 v5, 0x0

    cmpl-float v5, v6, v5

    if-lez v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    xor-int/lit8 v7, v5, 0x1

    .line 477
    iget-object v8, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v8}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v8}, Lin/srain/cube/views/ptr/a/a;->o()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v4

    goto :goto_1

    :cond_4
    move v8, v3

    .line 479
    :goto_1
    iget-object v9, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eqz v9, :cond_5

    iget-object v9, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v9}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v9}, Lin/srain/cube/views/ptr/a/a;->o()Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v4

    goto :goto_2

    :cond_5
    move v9, v3

    .line 481
    :goto_2
    iget-object v10, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lin/srain/cube/views/ptr/c;

    if-eqz v10, :cond_6

    iget-object v10, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lin/srain/cube/views/ptr/c;

    iget-object v11, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    iget-object v12, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    invoke-interface {v10, v0, v11, v12}, Lin/srain/cube/views/ptr/c;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    invoke-virtual {v10}, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->ordinal()I

    move-result v10

    and-int/2addr v10, v4

    if-lez v10, :cond_6

    move v10, v4

    goto :goto_3

    :cond_6
    move v10, v3

    .line 482
    :goto_3
    iget-object v11, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lin/srain/cube/views/ptr/c;

    const/4 v12, 0x2

    if-eqz v11, :cond_7

    iget-object v11, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eqz v11, :cond_7

    iget-object v11, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lin/srain/cube/views/ptr/c;

    instance-of v11, v11, Lin/srain/cube/views/ptr/d;

    if-eqz v11, :cond_7

    iget-object v11, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lin/srain/cube/views/ptr/c;

    check-cast v11, Lin/srain/cube/views/ptr/d;

    iget-object v13, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    iget-object v14, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    .line 483
    invoke-interface {v11, v0, v13, v14}, Lin/srain/cube/views/ptr/d;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    invoke-virtual {v11}, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->ordinal()I

    move-result v11

    and-int/2addr v11, v12

    if-lez v11, :cond_7

    move v11, v4

    goto :goto_4

    :cond_7
    move v11, v3

    .line 485
    :goto_4
    sget-boolean v13, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v13, :cond_8

    .line 486
    iget-object v13, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v14, "ACTION_MOVE: offsetY:%s, currentPos: %s, moveUp: %s, canMoveUp: %s, moveDown: %s: canMoveDown: %s canHeaderMoveDown: %s canFooterMoveUp: %s"

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v15, v3

    iget-object v3, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v3}, Lin/srain/cube/views/ptr/a/a;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v15, v12

    const/4 v3, 0x3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v3, 0x5

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v3

    const/4 v3, 0x6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v3

    const/4 v3, 0x7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v3

    invoke-static {v13, v14, v15}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    if-nez v8, :cond_c

    if-nez v9, :cond_c

    if-eqz v5, :cond_9

    if-nez v10, :cond_9

    .line 493
    invoke-virtual/range {p0 .. p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_9
    if-eqz v7, :cond_a

    if-nez v11, :cond_a

    .line 496
    invoke-virtual/range {p0 .. p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_a
    if-eqz v5, :cond_b

    .line 501
    invoke-direct {v0, v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(F)V

    return v4

    :cond_b
    if-eqz v7, :cond_c

    .line 507
    invoke-direct {v0, v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(F)V

    return v4

    :cond_c
    if-eqz v8, :cond_d

    .line 514
    invoke-direct {v0, v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(F)V

    return v4

    :cond_d
    if-eqz v9, :cond_16

    .line 521
    iget-boolean v3, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:Z

    if-eqz v3, :cond_e

    iget-byte v3, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    if-ne v3, v2, :cond_e

    .line 522
    invoke-virtual/range {p0 .. p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 524
    :cond_e
    invoke-direct {v0, v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(F)V

    return v4

    :pswitch_1
    move-object/from16 v1, p1

    .line 423
    iget-object v2, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->e()V

    .line 424
    iget-object v2, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->o()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 425
    sget-boolean v2, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v2, :cond_f

    .line 426
    iget-object v2, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v5, "call onRelease when user release"

    invoke-static {v2, v5}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_f
    invoke-direct {v0, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Z)V

    .line 429
    iget-object v2, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->s()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 430
    invoke-direct/range {p0 .. p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->u()V

    return v4

    .line 433
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 435
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_2
    move-object/from16 v1, p1

    .line 439
    iput-boolean v3, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->L:Z

    .line 440
    iget-object v5, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lin/srain/cube/views/ptr/a/a;->a(FF)V

    .line 442
    iget-boolean v5, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:Z

    if-nez v5, :cond_12

    .line 443
    iget-object v2, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a()V

    goto :goto_6

    .line 446
    :cond_12
    iget-object v5, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v5}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v5}, Lin/srain/cube/views/ptr/a/a;->o()Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v4

    goto :goto_5

    :cond_13
    move v5, v3

    :goto_5
    if-eqz v5, :cond_14

    .line 447
    iget-byte v5, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:B

    if-eq v5, v2, :cond_15

    .line 448
    :cond_14
    iget-object v2, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a()V

    .line 452
    :cond_15
    :goto_6
    iput-boolean v3, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Z

    .line 456
    invoke-virtual/range {p0 .. p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    return v4

    .line 529
    :cond_16
    :goto_7
    invoke-virtual/range {p0 .. p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_17
    :goto_8
    move-object/from16 v1, p1

    .line 417
    invoke-virtual/range {p0 .. p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e()V
    .locals 8

    .line 818
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "refreshComplete"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->H:Lin/srain/cube/views/ptr/g;

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->H:Lin/srain/cube/views/ptr/g;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/g;->b()V

    .line 826
    :cond_1
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->I:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->J:J

    sub-long v6, v2, v4

    sub-long v2, v0, v6

    long-to-int v0, v2

    if-gtz v0, :cond_3

    .line 828
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_2

    .line 829
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "performRefreshComplete at once"

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_2
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->r()V

    goto :goto_0

    .line 833
    :cond_3
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->M:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 834
    sget-boolean v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v1, :cond_4

    .line 835
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v2, "performRefreshComplete after delay: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 888
    invoke-virtual {p0, v0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(ZZ)V

    return-void
.end method

.method public g()Z
    .locals 2

    .line 933
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1210
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1220
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1215
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    invoke-direct {v0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1003
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    return-object v0
.end method

.method public getDurationToBackFooter()I
    .locals 1

    .line 1083
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:I

    return v0
.end method

.method public getDurationToBackHeader()I
    .locals 1

    .line 1075
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:I

    return v0
.end method

.method public getDurationToClose()F
    .locals 1

    .line 1060
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    int-to-float v0, v0

    return v0
.end method

.method public getDurationToCloseFooter()J
    .locals 2

    .line 1115
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDurationToCloseHeader()J
    .locals 2

    .line 1110
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFooterHeight()I
    .locals 1

    .line 649
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    return v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .line 645
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 1174
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    return-object v0
.end method

.method public getMode()Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;
    .locals 1

    .line 1032
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    return-object v0
.end method

.method public getOffsetToKeepHeaderWhileLoading()I
    .locals 1

    .line 1138
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->x()I

    move-result v0

    return v0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .line 1123
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->i()I

    move-result v0

    return v0
.end method

.method public getRatioOfHeaderToHeightRefresh()F
    .locals 1

    .line 1133
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->h()F

    move-result v0

    return v0
.end method

.method public getResistanceFooter()F
    .locals 1

    .line 1042
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->d()F

    move-result v0

    return v0
.end method

.method public getResistanceHeader()F
    .locals 1

    .line 1037
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->c()F

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 941
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->h:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    .line 958
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->i:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1165
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 274
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 275
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$b;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a(Lin/srain/cube/views/ptr/PtrFrameLayout$b;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->M:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .line 162
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PtrFrameLayout only can host 3 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_b

    .line 166
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-nez v0, :cond_1

    .line 167
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    .line 169
    :cond_1
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-nez v0, :cond_2

    .line 170
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:I

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    .line 172
    :cond_2
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-nez v0, :cond_3

    .line 173
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    .line 176
    :cond_3
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-nez v0, :cond_17

    .line 177
    :cond_4
    invoke-virtual {p0, v4}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 178
    invoke-virtual {p0, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 179
    invoke-virtual {p0, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 181
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-nez v0, :cond_5

    .line 182
    iput-object v8, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    .line 183
    iput-object v9, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    .line 184
    iput-object v10, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    goto/16 :goto_0

    .line 188
    :cond_5
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$2;

    const/4 v7, 0x3

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lin/srain/cube/views/ptr/PtrFrameLayout$2;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;ILandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 193
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 194
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    :cond_6
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 197
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    :cond_7
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 200
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    :cond_8
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-nez v1, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 203
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    .line 204
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 206
    :cond_9
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 207
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    .line 208
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 210
    :cond_a
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-nez v1, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 211
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    .line 212
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    if-ne v0, v2, :cond_15

    .line 217
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-nez v0, :cond_c

    .line 218
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    .line 220
    :cond_c
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-nez v0, :cond_d

    .line 221
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:I

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    .line 225
    :cond_d
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-nez v0, :cond_17

    .line 227
    :cond_e
    invoke-virtual {p0, v4}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 229
    instance-of v2, v0, Lin/srain/cube/views/ptr/e;

    if-eqz v2, :cond_f

    .line 230
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    .line 231
    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 232
    :cond_f
    instance-of v2, v1, Lin/srain/cube/views/ptr/e;

    if-eqz v2, :cond_10

    .line 233
    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    .line 234
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 237
    :cond_10
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-nez v2, :cond_11

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-nez v2, :cond_11

    .line 238
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    .line 239
    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 243
    :cond_11
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-nez v2, :cond_13

    .line 244
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-ne v2, v0, :cond_12

    move-object v0, v1

    :cond_12
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    goto :goto_0

    .line 246
    :cond_13
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-ne v2, v0, :cond_14

    move-object v0, v1

    :cond_14
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    :cond_15
    if-ne v0, v3, :cond_16

    .line 252
    invoke-virtual {p0, v4}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 254
    :cond_16
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 255
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    const v1, -0x9a00

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?"

    .line 259
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    .line 261
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    .line 263
    :cond_17
    :goto_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 264
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 266
    :cond_18
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 267
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 269
    :cond_19
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 341
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 286
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 288
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    .line 295
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 296
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 297
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 298
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    .line 299
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/a/a;->c(I)V

    .line 302
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 303
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 304
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 305
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    .line 306
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/a/a;->d(I)V

    .line 309
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Landroid/view/View;II)V

    .line 311
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 312
    sget-boolean p2, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    .line 320
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 321
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    invoke-super {p0, p2, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :cond_2
    return-void
.end method

.method public setDurationToBack(I)V
    .locals 0

    .line 1070
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setDurationToBackHeader(I)V

    .line 1071
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setDurationToBackFooter(I)V

    return-void
.end method

.method public setDurationToBackFooter(I)V
    .locals 0

    .line 1087
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:I

    return-void
.end method

.method public setDurationToBackHeader(I)V
    .locals 0

    .line 1079
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:I

    return-void
.end method

.method public setDurationToClose(I)V
    .locals 0

    .line 1096
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setDurationToCloseHeader(I)V

    .line 1097
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setDurationToCloseFooter(I)V

    return-void
.end method

.method public setDurationToCloseFooter(I)V
    .locals 0

    .line 1105
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    return-void
.end method

.method public setDurationToCloseHeader(I)V
    .locals 0

    .line 1101
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:I

    return-void
.end method

.method public setEnabledNextPtrAtOnce(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 951
    iget p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    sget-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->h:B

    or-int/2addr p1, v0

    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    goto :goto_0

    .line 953
    :cond_0
    iget p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    sget-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->h:B

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    :goto_0
    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 3

    .line 1191
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 1192
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeView(Landroid/view/View;)V

    .line 1194
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1196
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;-><init>(II)V

    .line 1197
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    :cond_1
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    .line 1200
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setForceBackWhenComplete(Z)V
    .locals 0

    .line 1161
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:Z

    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3

    .line 1178
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 1179
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeView(Landroid/view/View;)V

    .line 1181
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1183
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;-><init>(II)V

    .line 1184
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1186
    :cond_1
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Landroid/view/View;

    .line 1187
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setInterceptEventWhileWorking(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setKeepHeaderWhenRefresh(Z)V
    .locals 0

    .line 1152
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Z

    return-void
.end method

.method public setLoadingMinTime(I)V
    .locals 0

    .line 989
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->I:I

    return-void
.end method

.method public setMode(Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;)V
    .locals 0

    .line 1028
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    return-void
.end method

.method public setOffsetToKeepHeaderWhileLoading(I)V
    .locals 1

    .line 1143
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->e(I)V

    return-void
.end method

.method public setOffsetToRefresh(I)V
    .locals 1

    .line 1128
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->a(I)V

    return-void
.end method

.method public setPinContent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 968
    iget p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    sget-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->i:B

    or-int/2addr p1, v0

    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    goto :goto_0

    .line 970
    :cond_0
    iget p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    sget-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->i:B

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:I

    :goto_0
    return-void
.end method

.method public setPtrHandler(Lin/srain/cube/views/ptr/c;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lin/srain/cube/views/ptr/c;

    return-void
.end method

.method public setPtrIndicator(Lin/srain/cube/views/ptr/a/a;)V
    .locals 1

    .line 1021
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    if-eq v0, p1, :cond_0

    .line 1022
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {p1, v0}, Lin/srain/cube/views/ptr/a/a;->a(Lin/srain/cube/views/ptr/a/a;)V

    .line 1024
    :cond_0
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    return-void
.end method

.method public setPullToRefresh(Z)V
    .locals 0

    .line 1169
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Z

    return-void
.end method

.method public setRatioOfHeaderHeightToRefresh(F)V
    .locals 1

    .line 1119
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->c(F)V

    return-void
.end method

.method public setRefreshCompleteHook(Lin/srain/cube/views/ptr/g;)V
    .locals 1

    .line 688
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->H:Lin/srain/cube/views/ptr/g;

    .line 689
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$3;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$3;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    invoke-virtual {p1, v0}, Lin/srain/cube/views/ptr/g;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setResistance(F)V
    .locals 0

    .line 1046
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setResistanceHeader(F)V

    .line 1047
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setResistanceFooter(F)V

    return-void
.end method

.method public setResistanceFooter(F)V
    .locals 1

    .line 1055
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->b(F)V

    return-void
.end method

.method public setResistanceHeader(F)V
    .locals 1

    .line 1051
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->K:Lin/srain/cube/views/ptr/a/a;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->a(F)V

    return-void
.end method
