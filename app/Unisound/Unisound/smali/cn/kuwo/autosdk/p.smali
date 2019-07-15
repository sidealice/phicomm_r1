.class public final Lcn/kuwo/autosdk/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:I

.field private static final c:[J

.field private static final d:[I

.field private static final e:[I

.field private static final f:[[C

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[J

.field private static m:J

.field private static n:J

.field private static o:J

.field private static p:[I

.field private static q:[B

.field private static r:I

.field private static s:I

.field private static t:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const-string v0, "ylzsxkwm"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcn/kuwo/autosdk/p;->a:[B

    sget-object v0, Lcn/kuwo/autosdk/p;->a:[B

    array-length v0, v0

    sput v0, Lcn/kuwo/autosdk/p;->b:I

    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcn/kuwo/autosdk/p;->c:[J

    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x39

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x29

    aput v1, v0, v5

    const/16 v1, 0x21

    aput v1, v0, v6

    const/4 v1, 0x4

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v1, v0, v7

    const/16 v1, 0x9

    aput v1, v0, v8

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x3b

    aput v1, v0, v9

    const/16 v1, 0x9

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v6, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x3d

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v7, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x26

    aput v9, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x2f

    aput v5, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x3c

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x34

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3e

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x3f

    aput v8, v0, v1

    sput-object v0, Lcn/kuwo/autosdk/p;->d:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v1, v0, v5

    aput v5, v0, v6

    const/4 v1, 0x4

    aput v6, v0, v1

    const/4 v1, 0x4

    aput v1, v0, v7

    const/4 v1, -0x1

    aput v1, v0, v8

    const/4 v1, 0x7

    const/4 v2, -0x1

    aput v2, v0, v1

    aput v6, v0, v9

    const/16 v1, 0x9

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v7, v0, v1

    const/16 v1, 0xb

    aput v8, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v9, v0, v1

    const/16 v1, 0xe

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v9, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/4 v2, -0x1

    aput v2, v0, v1

    sput-object v0, Lcn/kuwo/autosdk/p;->e:[I

    new-array v0, v9, [[C

    const/4 v1, 0x0

    const/16 v2, 0x40

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x4

    aput-char v4, v2, v3

    aput-char v6, v2, v5

    const/16 v3, 0xf

    aput-char v3, v2, v6

    const/4 v3, 0x4

    aput-char v5, v2, v3

    const/16 v3, 0xd

    aput-char v3, v2, v7

    aput-char v7, v2, v8

    const/4 v3, 0x7

    aput-char v6, v2, v3

    const/16 v3, 0xd

    aput-char v3, v2, v9

    const/16 v3, 0x9

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0xa

    aput-char v8, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0xd

    aput-char v5, v2, v3

    const/16 v3, 0xf

    aput-char v7, v2, v3

    const/16 v3, 0x10

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0x11

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x15

    aput-char v8, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/16 v3, 0x17

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0x18

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x19

    aput-char v9, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0x1b

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0x1c

    aput-char v9, v2, v3

    const/16 v3, 0x1d

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0x1e

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0x21

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x22

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0x23

    aput-char v7, v2, v3

    const/16 v3, 0x24

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x25

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0x26

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/16 v3, 0x27

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0x28

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0x29

    aput-char v9, v2, v3

    const/16 v3, 0x2a

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0x2b

    aput-char v6, v2, v3

    const/16 v3, 0x2c

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/16 v3, 0x2d

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x2e

    aput-char v6, v2, v3

    const/16 v3, 0x2f

    aput-char v8, v2, v3

    const/16 v3, 0x30

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x31

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0x32

    aput-char v8, v2, v3

    const/16 v3, 0x33

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0x34

    aput-char v5, v2, v3

    const/16 v3, 0x35

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/16 v3, 0x36

    aput-char v7, v2, v3

    const/16 v3, 0x38

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0x39

    aput-char v5, v2, v3

    const/16 v3, 0x3a

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0x3b

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x3c

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x3d

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0x3e

    aput-char v9, v2, v3

    const/16 v3, 0x3f

    const/16 v4, 0xd

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x40

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x9

    aput-char v3, v2, v5

    aput-char v7, v2, v6

    const/4 v3, 0x4

    aput-char v8, v2, v3

    const/16 v3, 0xa

    aput-char v3, v2, v7

    const/16 v3, 0xc

    aput-char v3, v2, v8

    const/4 v3, 0x7

    const/16 v4, 0x9

    aput-char v4, v2, v3

    aput-char v9, v2, v9

    const/16 v3, 0x9

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0xa

    aput-char v5, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0xc

    aput-char v6, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/16 v3, 0xe

    aput-char v7, v2, v3

    const/16 v3, 0xf

    aput-char v5, v2, v3

    const/16 v3, 0x10

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x12

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0x13

    aput-char v9, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0x15

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0x17

    aput-char v6, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/16 v3, 0x1b

    aput-char v8, v2, v3

    const/16 v3, 0x1c

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0x1d

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x1e

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0x1f

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x20

    aput-char v6, v2, v3

    const/16 v3, 0x21

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/16 v3, 0x22

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0x23

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0x24

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x25

    aput-char v6, v2, v3

    const/16 v3, 0x26

    aput-char v8, v2, v3

    const/16 v3, 0x28

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0x29

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0x2a

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x2b

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0x2c

    aput-char v9, v2, v3

    const/16 v3, 0x2d

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0x2e

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0x2f

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x30

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/16 v3, 0x31

    aput-char v9, v2, v3

    const/16 v3, 0x33

    aput-char v8, v2, v3

    const/16 v3, 0x34

    aput-char v5, v2, v3

    const/16 v3, 0x35

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x36

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/16 v3, 0x37

    aput-char v7, v2, v3

    const/16 v3, 0x38

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0x39

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x3a

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0x3b

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0x3c

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x3d

    aput-char v5, v2, v3

    const/16 v3, 0x3e

    aput-char v7, v2, v3

    const/16 v3, 0x3f

    const/16 v4, 0x9

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/4 v2, 0x1

    aput-char v2, v1, v5

    const/16 v2, 0xb

    aput-char v2, v1, v6

    const/4 v2, 0x4

    aput-char v8, v1, v2

    aput-char v9, v1, v7

    const/16 v2, 0xb

    aput-char v2, v1, v8

    const/4 v2, 0x7

    aput-char v7, v1, v2

    const/16 v2, 0x9

    aput-char v2, v1, v9

    const/16 v2, 0x9

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0xc

    aput-char v3, v1, v2

    const/16 v2, 0xb

    aput-char v5, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0xd

    aput-char v6, v1, v2

    const/16 v2, 0xe

    aput-char v5, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x11

    aput-char v8, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0x14

    aput-char v6, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0x16

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/16 v2, 0x18

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x19

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0x1a

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0xc

    aput-char v3, v1, v2

    const/16 v2, 0x1c

    aput-char v7, v1, v2

    const/16 v2, 0x1e

    aput-char v9, v1, v2

    const/16 v2, 0x1f

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0x20

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x21

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0x22

    aput-char v5, v1, v2

    const/16 v2, 0x23

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0x24

    aput-char v6, v1, v2

    const/16 v2, 0x25

    aput-char v8, v1, v2

    const/16 v2, 0x26

    const/16 v3, 0xc

    aput-char v3, v1, v2

    const/16 v2, 0x27

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0x29

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x2a

    aput-char v7, v1, v2

    const/16 v2, 0x2b

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x2c

    aput-char v8, v1, v2

    const/16 v2, 0x2d

    aput-char v9, v1, v2

    const/16 v2, 0x2e

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0x2f

    aput-char v5, v1, v2

    const/16 v2, 0x30

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0x31

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/16 v2, 0x32

    aput-char v9, v1, v2

    const/16 v2, 0x33

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0x34

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0x35

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0x36

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0x37

    aput-char v7, v1, v2

    const/16 v2, 0x38

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0x3a

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x3b

    aput-char v6, v1, v2

    const/16 v2, 0x3c

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/16 v2, 0x3d

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0x3e

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0x3f

    const/16 v3, 0xc

    aput-char v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x40

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/4 v2, 0x1

    aput-char v2, v1, v5

    const/16 v2, 0xf

    aput-char v2, v1, v6

    const/16 v2, 0xc

    aput-char v2, v1, v7

    const/16 v2, 0xb

    aput-char v2, v1, v8

    const/4 v2, 0x7

    aput-char v7, v1, v2

    const/16 v2, 0xe

    aput-char v2, v1, v9

    const/16 v2, 0x9

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0xa

    aput-char v9, v1, v2

    const/16 v2, 0xb

    aput-char v6, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0xd

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0xe

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0xf

    aput-char v9, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x11

    aput-char v8, v1, v2

    const/16 v2, 0x12

    aput-char v5, v1, v2

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0x14

    aput-char v8, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, 0xc

    aput-char v3, v1, v2

    const/16 v2, 0x17

    aput-char v5, v1, v2

    const/16 v2, 0x18

    aput-char v6, v1, v2

    const/16 v2, 0x1a

    aput-char v7, v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x1c

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/16 v2, 0x1d

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x1e

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0x1f

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0x20

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x21

    aput-char v6, v1, v2

    const/16 v2, 0x22

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0x23

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0x24

    aput-char v8, v1, v2

    const/16 v2, 0x25

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/16 v2, 0x26

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0x27

    const/16 v3, 0xc

    aput-char v3, v1, v2

    const/16 v2, 0x28

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0x2a

    aput-char v5, v1, v2

    const/16 v2, 0x2b

    aput-char v7, v1, v2

    const/16 v2, 0x2d

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x2e

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x2f

    aput-char v5, v1, v2

    const/16 v2, 0x30

    aput-char v9, v1, v2

    const/16 v2, 0x31

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0x32

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0x33

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0x34

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0x35

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0x36

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/16 v2, 0x37

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0x38

    aput-char v7, v1, v2

    const/16 v2, 0x39

    aput-char v8, v1, v2

    const/16 v2, 0x3a

    const/16 v3, 0xc

    aput-char v3, v1, v2

    const/16 v2, 0x3b

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0x3c

    aput-char v6, v1, v2

    const/16 v2, 0x3d

    aput-char v9, v1, v2

    const/16 v2, 0x3e

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0x3f

    const/16 v3, 0xe

    aput-char v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const/16 v2, 0x40

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char v5, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x4

    aput-char v4, v2, v3

    aput-char v9, v2, v5

    const/16 v3, 0xf

    aput-char v3, v2, v6

    const/4 v3, 0x4

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0xa

    aput-char v3, v2, v7

    const/16 v3, 0xd

    aput-char v3, v2, v8

    const/4 v3, 0x7

    aput-char v8, v2, v3

    const/4 v3, 0x4

    aput-char v3, v2, v9

    const/16 v3, 0x9

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0xa

    aput-char v6, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0xd

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0x11

    aput-char v5, v2, v3

    const/16 v3, 0x12

    aput-char v7, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/16 v3, 0x17

    aput-char v6, v2, v3

    const/16 v3, 0x18

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x1b

    aput-char v7, v2, v3

    const/16 v3, 0x1c

    aput-char v8, v2, v3

    const/16 v3, 0x1d

    aput-char v9, v2, v3

    const/16 v3, 0x1e

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/16 v3, 0x1f

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x20

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x21

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0x22

    aput-char v7, v2, v3

    const/16 v3, 0x23

    aput-char v8, v2, v3

    const/16 v3, 0x24

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0x25

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x26

    aput-char v6, v2, v3

    const/16 v3, 0x27

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0x28

    aput-char v5, v2, v3

    const/16 v3, 0x29

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0x2a

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x2c

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/16 v3, 0x2d

    aput-char v5, v2, v3

    const/16 v3, 0x2e

    aput-char v9, v2, v3

    const/16 v3, 0x2f

    aput-char v7, v2, v3

    const/16 v3, 0x30

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0x31

    aput-char v9, v2, v3

    const/16 v3, 0x33

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x34

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0x35

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x36

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/16 v3, 0x37

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0x38

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0x39

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0x3a

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0x3b

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/16 v3, 0x3c

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x3d

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/16 v3, 0x3e

    aput-char v8, v2, v3

    const/16 v3, 0x3f

    aput-char v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0xc

    aput-char v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/4 v2, 0x7

    aput-char v2, v1, v6

    const/4 v2, 0x4

    const/16 v3, 0x9

    aput-char v3, v1, v2

    aput-char v5, v1, v7

    const/16 v2, 0xe

    aput-char v2, v1, v8

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0xa

    aput-char v2, v1, v9

    const/16 v2, 0x9

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0xa

    aput-char v6, v1, v2

    const/16 v2, 0xb

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0xc

    aput-char v8, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0xc

    aput-char v3, v1, v2

    const/16 v2, 0xe

    aput-char v7, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x14

    aput-char v5, v1, v2

    const/16 v2, 0x15

    aput-char v9, v1, v2

    const/16 v2, 0x16

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x18

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0x19

    aput-char v7, v1, v2

    const/16 v2, 0x1a

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/16 v2, 0x1c

    aput-char v9, v1, v2

    const/16 v2, 0x1d

    aput-char v6, v1, v2

    const/16 v2, 0x1e

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0x1f

    aput-char v8, v1, v2

    const/16 v2, 0x20

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/16 v2, 0x21

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0x22

    aput-char v8, v1, v2

    const/16 v2, 0x23

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0x24

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0x25

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0x27

    aput-char v8, v1, v2

    const/16 v2, 0x28

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0x29

    aput-char v5, v1, v2

    const/16 v2, 0x2a

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x2b

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0x2c

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0x2d

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0x2e

    aput-char v6, v1, v2

    const/16 v2, 0x2f

    aput-char v9, v1, v2

    const/16 v2, 0x30

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0x31

    aput-char v6, v1, v2

    const/16 v2, 0x32

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0x33

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x34

    const/16 v3, 0xc

    aput-char v3, v1, v2

    const/16 v2, 0x35

    aput-char v7, v1, v2

    const/16 v2, 0x36

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0x38

    aput-char v5, v1, v2

    const/16 v2, 0x39

    const/16 v3, 0xc

    aput-char v3, v1, v2

    const/16 v2, 0x3a

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x3b

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0x3c

    aput-char v7, v1, v2

    const/16 v2, 0x3d

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/16 v2, 0x3e

    aput-char v9, v1, v2

    const/16 v2, 0x3f

    const/16 v3, 0xd

    aput-char v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0x40

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-char v3, v1, v2

    aput-char v6, v1, v5

    const/16 v2, 0xa

    aput-char v2, v1, v6

    const/4 v2, 0x4

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0xc

    aput-char v2, v1, v7

    aput-char v7, v1, v8

    aput-char v5, v1, v9

    const/16 v2, 0x9

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0xb

    aput-char v8, v1, v2

    const/16 v2, 0xc

    aput-char v9, v1, v2

    const/16 v2, 0xd

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0xe

    aput-char v8, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0x11

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0xc

    aput-char v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0x15

    aput-char v6, v1, v2

    const/16 v2, 0x16

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/16 v2, 0x17

    aput-char v7, v1, v2

    const/16 v2, 0x18

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x19

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x1a

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0x1b

    aput-char v9, v1, v2

    const/16 v2, 0x1c

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x1d

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x1e

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0x1f

    aput-char v5, v1, v2

    const/16 v2, 0x20

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x21

    aput-char v8, v1, v2

    const/16 v2, 0x22

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x23

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0x24

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0x25

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0x26

    aput-char v5, v1, v2

    const/16 v2, 0x27

    const/16 v3, 0xe

    aput-char v3, v1, v2

    const/16 v2, 0x28

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0x29

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/16 v2, 0x2a

    aput-char v7, v1, v2

    const/16 v2, 0x2c

    const/4 v3, 0x1

    aput-char v3, v1, v2

    const/16 v2, 0x2d

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/16 v2, 0x2e

    aput-char v9, v1, v2

    const/16 v2, 0x2f

    aput-char v6, v1, v2

    const/16 v2, 0x31

    const/16 v3, 0xb

    aput-char v3, v1, v2

    const/16 v2, 0x32

    aput-char v6, v1, v2

    const/16 v2, 0x33

    aput-char v7, v1, v2

    const/16 v2, 0x34

    const/16 v3, 0x9

    aput-char v3, v1, v2

    const/16 v2, 0x35

    const/4 v3, 0x4

    aput-char v3, v1, v2

    const/16 v2, 0x36

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0x37

    aput-char v5, v1, v2

    const/16 v2, 0x38

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0x39

    aput-char v9, v1, v2

    const/16 v2, 0x3a

    const/16 v3, 0xc

    aput-char v3, v1, v2

    const/16 v2, 0x3b

    const/16 v3, 0xf

    aput-char v3, v1, v2

    const/16 v2, 0x3c

    const/16 v3, 0xa

    aput-char v3, v1, v2

    const/16 v2, 0x3d

    const/4 v3, 0x7

    aput-char v3, v1, v2

    const/16 v2, 0x3e

    aput-char v8, v1, v2

    const/16 v2, 0x3f

    const/16 v3, 0xc

    aput-char v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x7

    const/16 v2, 0x40

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0xa

    aput-char v3, v2, v5

    const/4 v3, 0x4

    aput-char v8, v2, v3

    const/16 v3, 0x9

    aput-char v3, v2, v7

    aput-char v7, v2, v8

    const/4 v3, 0x7

    const/16 v4, 0xf

    aput-char v4, v2, v3

    aput-char v9, v2, v9

    const/16 v3, 0x9

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0xa

    aput-char v6, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0xf

    aput-char v7, v2, v3

    const/16 v3, 0x10

    aput-char v5, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/16 v3, 0x13

    aput-char v8, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0x17

    aput-char v6, v2, v3

    const/16 v3, 0x18

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0x19

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/16 v3, 0x1c

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x1d

    aput-char v5, v2, v3

    const/16 v3, 0x1e

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0x1f

    aput-char v9, v2, v3

    const/16 v3, 0x20

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x21

    aput-char v5, v2, v3

    const/16 v3, 0x22

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0x23

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x24

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0x25

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0x27

    aput-char v6, v2, v3

    const/16 v3, 0x28

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/16 v3, 0x29

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x2a

    aput-char v8, v2, v3

    const/16 v3, 0x2b

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/16 v3, 0x2c

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0x2d

    aput-char v9, v2, v3

    const/16 v3, 0x2e

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/16 v3, 0x2f

    aput-char v8, v2, v3

    const/16 v3, 0x30

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/16 v3, 0x31

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/16 v3, 0x32

    aput-char v7, v2, v3

    const/16 v3, 0x33

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/16 v3, 0x34

    aput-char v6, v2, v3

    const/16 v3, 0x35

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/16 v3, 0x36

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0x37

    aput-char v7, v2, v3

    const/16 v3, 0x38

    aput-char v9, v2, v3

    const/16 v3, 0x39

    const/4 v4, 0x7

    aput-char v4, v2, v3

    const/16 v3, 0x3a

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/16 v3, 0x3c

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/16 v3, 0x3d

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/16 v3, 0x3e

    aput-char v5, v2, v3

    const/16 v3, 0x3f

    const/16 v4, 0xb

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/autosdk/p;->f:[[C

    const/16 v0, 0x20

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xf

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v8, v0, v1

    const/16 v1, 0x13

    aput v1, v0, v5

    const/16 v1, 0x14

    aput v1, v0, v6

    const/4 v1, 0x4

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v1, v0, v7

    const/16 v1, 0x1b

    aput v1, v0, v8

    const/4 v1, 0x7

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x16

    aput v5, v0, v1

    const/16 v1, 0x17

    aput v9, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x1b

    aput v7, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x1e

    aput v6, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x18

    aput v2, v0, v1

    sput-object v0, Lcn/kuwo/autosdk/p;->g:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x27

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x2f

    aput v1, v0, v5

    const/16 v1, 0xf

    aput v1, v0, v6

    const/4 v1, 0x4

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v1, v0, v7

    const/16 v1, 0x3f

    aput v1, v0, v8

    const/4 v1, 0x7

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x26

    aput v1, v0, v9

    const/16 v1, 0x9

    aput v8, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3e

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v7, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x3d

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x34

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x3c

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x21

    aput v6, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x29

    aput v5, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x31

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x39

    aput v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x3b

    aput v9, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x18

    aput v2, v0, v1

    sput-object v0, Lcn/kuwo/autosdk/p;->h:[I

    const/16 v0, 0x38

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x38

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x28

    aput v1, v0, v5

    const/16 v1, 0x20

    aput v1, v0, v6

    const/4 v1, 0x4

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v1, v0, v7

    aput v9, v0, v8

    const/16 v1, 0x39

    aput v1, v0, v9

    const/16 v1, 0x9

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v5, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x3e

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x23

    aput v8, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x3d

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x2b

    aput v7, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x3c

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x34

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x37

    aput v6, v0, v1

    sput-object v0, Lcn/kuwo/autosdk/p;->i:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v1, v0, v5

    const/16 v1, 0x17

    aput v1, v0, v6

    const/4 v1, 0x4

    aput v1, v0, v7

    const/4 v1, -0x1

    aput v1, v0, v8

    const/4 v1, 0x7

    const/4 v2, -0x1

    aput v2, v0, v1

    aput v5, v0, v9

    const/16 v1, 0x9

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v7, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x13

    aput v6, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x19

    aput v8, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x34

    aput v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/4 v2, -0x1

    aput v2, v0, v1

    sput-object v0, Lcn/kuwo/autosdk/p;->j:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/kuwo/autosdk/p;->k:[I

    new-array v0, v6, [J

    const/4 v1, 0x1

    const-wide/32 v2, 0x100001

    aput-wide v2, v0, v1

    const-wide/32 v2, 0x300003

    aput-wide v2, v0, v5

    sput-object v0, Lcn/kuwo/autosdk/p;->l:[J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/kuwo/autosdk/p;->m:J

    new-array v0, v5, [I

    sput-object v0, Lcn/kuwo/autosdk/p;->p:[I

    new-array v0, v9, [B

    sput-object v0, Lcn/kuwo/autosdk/p;->q:[B

    return-void

    :array_0
    .array-data 8
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000
        0x80000000L
        0x100000000L
        0x200000000L
        0x400000000L
        0x800000000L
        0x1000000000L
        0x2000000000L
        0x4000000000L
        0x8000000000L
        0x10000000000L
        0x20000000000L
        0x40000000000L
        0x80000000000L
        0x100000000000L
        0x200000000000L
        0x400000000000L
        0x800000000000L
        0x1000000000000L
        0x2000000000000L
        0x4000000000000L
        0x8000000000000L
        0x10000000000000L
        0x20000000000000L
        0x40000000000000L
        0x80000000000000L
        0x100000000000000L
        0x200000000000000L
        0x400000000000000L
        0x800000000000000L
        0x1000000000000000L
        0x2000000000000000L
        0x4000000000000000L    # 2.0
        -0x8000000000000000L
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data
.end method

.method private static a([IIJ)J
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v2

    :goto_0
    if-lt v4, p1, :cond_0

    return-wide v0

    :cond_0
    aget v5, p0, v4

    if-ltz v5, :cond_1

    sget-object v5, Lcn/kuwo/autosdk/p;->c:[J

    aget v6, p0, v4

    aget-wide v6, v5, v6

    and-long/2addr v6, p2

    cmp-long v5, v6, v2

    if-eqz v5, :cond_1

    sget-object v5, Lcn/kuwo/autosdk/p;->c:[J

    aget-wide v6, v5, v4

    or-long/2addr v0, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static a([JJ)J
    .locals 9

    sget-object v0, Lcn/kuwo/autosdk/p;->d:[I

    const/16 v1, 0x40

    invoke-static {v0, v1, p1, p2}, Lcn/kuwo/autosdk/p;->a([IIJ)J

    move-result-wide v0

    sput-wide v0, Lcn/kuwo/autosdk/p;->m:J

    sget-object v0, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v1, 0x0

    sget-wide v2, Lcn/kuwo/autosdk/p;->m:J

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    aput v2, v0, v1

    sget-object v0, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v1, 0x1

    sget-wide v2, Lcn/kuwo/autosdk/p;->m:J

    const-wide v4, -0x100000000L

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    aput v2, v0, v1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    sget-object v0, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcn/kuwo/autosdk/p;->s:I

    sget-object v0, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v1, 0x0

    sget-object v2, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    sget-object v0, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v1, 0x1

    sget v2, Lcn/kuwo/autosdk/p;->s:I

    aput v2, v0, v1

    sget-object v0, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, -0x100000000L

    and-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    sget-object v4, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    sput-wide v0, Lcn/kuwo/autosdk/p;->m:J

    sget-object v0, Lcn/kuwo/autosdk/p;->h:[I

    const/16 v1, 0x40

    sget-wide v2, Lcn/kuwo/autosdk/p;->m:J

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/autosdk/p;->a([IIJ)J

    move-result-wide v0

    sput-wide v0, Lcn/kuwo/autosdk/p;->m:J

    sget-wide v0, Lcn/kuwo/autosdk/p;->m:J

    return-wide v0

    :cond_0
    sget-object v0, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-long v2, v0

    sput-wide v2, Lcn/kuwo/autosdk/p;->o:J

    sget-object v0, Lcn/kuwo/autosdk/p;->e:[I

    const/16 v2, 0x40

    sget-wide v4, Lcn/kuwo/autosdk/p;->o:J

    invoke-static {v0, v2, v4, v5}, Lcn/kuwo/autosdk/p;->a([IIJ)J

    move-result-wide v2

    sput-wide v2, Lcn/kuwo/autosdk/p;->o:J

    sget-wide v2, Lcn/kuwo/autosdk/p;->o:J

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    sput-wide v2, Lcn/kuwo/autosdk/p;->o:J

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    sput v0, Lcn/kuwo/autosdk/p;->r:I

    const/4 v0, 0x7

    sput v0, Lcn/kuwo/autosdk/p;->t:I

    :goto_2
    sget v0, Lcn/kuwo/autosdk/p;->t:I

    if-gez v0, :cond_2

    sget v0, Lcn/kuwo/autosdk/p;->r:I

    int-to-long v2, v0

    sput-wide v2, Lcn/kuwo/autosdk/p;->o:J

    sget-object v0, Lcn/kuwo/autosdk/p;->g:[I

    const/16 v2, 0x20

    sget-wide v4, Lcn/kuwo/autosdk/p;->o:J

    invoke-static {v0, v2, v4, v5}, Lcn/kuwo/autosdk/p;->a([IIJ)J

    move-result-wide v2

    sput-wide v2, Lcn/kuwo/autosdk/p;->o:J

    sget-object v0, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-long v2, v0

    sput-wide v2, Lcn/kuwo/autosdk/p;->n:J

    sget-object v0, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v2, 0x0

    sget-object v3, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v0, v2

    sget-object v0, Lcn/kuwo/autosdk/p;->p:[I

    const/4 v2, 0x1

    sget-wide v4, Lcn/kuwo/autosdk/p;->n:J

    sget-wide v6, Lcn/kuwo/autosdk/p;->o:J

    xor-long/2addr v4, v6

    long-to-int v3, v4

    aput v3, v0, v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lcn/kuwo/autosdk/p;->q:[B

    const-wide/16 v4, 0xff

    sget-wide v6, Lcn/kuwo/autosdk/p;->o:J

    mul-int/lit8 v3, v0, 0x8

    shr-long/2addr v6, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget v0, Lcn/kuwo/autosdk/p;->r:I

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcn/kuwo/autosdk/p;->r:I

    sget v0, Lcn/kuwo/autosdk/p;->r:I

    sget-object v2, Lcn/kuwo/autosdk/p;->f:[[C

    sget v3, Lcn/kuwo/autosdk/p;->t:I

    aget-object v2, v2, v3

    sget-object v3, Lcn/kuwo/autosdk/p;->q:[B

    sget v4, Lcn/kuwo/autosdk/p;->t:I

    aget-byte v3, v3, v4

    aget-char v2, v2, v3

    or-int/2addr v0, v2

    sput v0, Lcn/kuwo/autosdk/p;->r:I

    sget v0, Lcn/kuwo/autosdk/p;->t:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/kuwo/autosdk/p;->t:I

    goto :goto_2
.end method

.method private static a(J[JI)V
    .locals 10

    const/4 v0, 0x0

    sget-object v1, Lcn/kuwo/autosdk/p;->i:[I

    const/16 v2, 0x38

    invoke-static {v1, v2, p0, p1}, Lcn/kuwo/autosdk/p;->a([IIJ)J

    move-result-wide v2

    move v1, v0

    :goto_0
    const/16 v4, 0x10

    if-lt v1, v4, :cond_1

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    :goto_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    :cond_0
    return-void

    :cond_1
    sget-object v4, Lcn/kuwo/autosdk/p;->l:[J

    sget-object v5, Lcn/kuwo/autosdk/p;->k:[I

    aget v5, v5, v1

    aget-wide v4, v4, v5

    and-long/2addr v4, v2

    sget-object v6, Lcn/kuwo/autosdk/p;->k:[I

    aget v6, v6, v1

    rsub-int/lit8 v6, v6, 0x1c

    shl-long/2addr v4, v6

    sget-object v6, Lcn/kuwo/autosdk/p;->l:[J

    sget-object v7, Lcn/kuwo/autosdk/p;->k:[I

    aget v7, v7, v1

    aget-wide v6, v6, v7

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr v2, v6

    sget-object v6, Lcn/kuwo/autosdk/p;->k:[I

    aget v6, v6, v1

    shr-long/2addr v2, v6

    or-long/2addr v2, v4

    sget-object v4, Lcn/kuwo/autosdk/p;->j:[I

    const/16 v5, 0x40

    invoke-static {v4, v5, v2, v3}, Lcn/kuwo/autosdk/p;->a([IIJ)J

    move-result-wide v4

    aput-wide v4, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-wide v2, p2, v0

    rsub-int/lit8 v1, v0, 0xf

    aget-wide v4, p2, v1

    aput-wide v4, p2, v0

    rsub-int/lit8 v1, v0, 0xf

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized a([BI[BI)[B
    .locals 13

    const-class v4, Lcn/kuwo/autosdk/p;

    monitor-enter v4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    :try_start_0
    div-int/lit8 v5, p1, 0x8

    const/16 v0, 0x10

    new-array v6, v0, [J

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-array v7, v5, [J

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lt v1, v5, :cond_2

    add-int/lit8 v0, v5, 0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x8

    new-array v8, v0, [J

    const/4 v0, 0x0

    invoke-static {v2, v3, v6, v0}, Lcn/kuwo/autosdk/p;->a(J[JI)V

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v5, :cond_4

    rem-int/lit8 v1, p1, 0x8

    mul-int/lit8 v0, v5, 0x8

    sub-int v0, p1, v0

    new-array v7, v0, [B

    mul-int/lit8 v0, v5, 0x8

    const/4 v2, 0x0

    mul-int/lit8 v3, v5, 0x8

    sub-int v3, p1, v3

    invoke-static {p0, v0, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_4
    if-lt v0, v1, :cond_5

    invoke-static {v6, v2, v3}, Lcn/kuwo/autosdk/p;->a([JJ)J

    move-result-wide v0

    aput-wide v0, v8, v5

    array-length v0, v8

    mul-int/lit8 v0, v0, 0x8

    new-array v3, v0, [B

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_5
    array-length v0, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v0, :cond_6

    monitor-exit v4

    return-object v3

    :cond_0
    :try_start_1
    aget-byte v1, p2, v0

    int-to-long v6, v1

    mul-int/lit8 v1, v0, 0x8

    shl-long/2addr v6, v1

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    aput-wide v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_6
    const/16 v8, 0x8

    if-lt v0, v8, :cond_3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    aget-wide v8, v7, v1

    mul-int/lit8 v10, v1, 0x8

    add-int/2addr v10, v0

    aget-byte v10, p0, v10

    int-to-long v10, v10

    mul-int/lit8 v12, v0, 0x8

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    aput-wide v8, v7, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4
    aget-wide v2, v7, v0

    invoke-static {v6, v2, v3}, Lcn/kuwo/autosdk/p;->a([JJ)J

    move-result-wide v2

    aput-wide v2, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    aget-byte v9, v7, v0

    int-to-long v10, v9

    mul-int/lit8 v9, v0, 0x8

    shl-long/2addr v10, v9

    or-long/2addr v2, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/16 v5, 0x8

    if-lt v0, v5, :cond_7

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_7
    const-wide/16 v6, 0xff

    aget-wide v10, v8, v2

    mul-int/lit8 v5, v0, 0x8

    shr-long/2addr v10, v5

    and-long/2addr v6, v10

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
